import 'package:clipboard/pages/search/widgets/search_bar.dart';
import 'package:clipboard/routes/utils.dart';
import 'package:clipboard/widgets/clip_card.dart';
import 'package:clipboard/widgets/load_more_card.dart';
import 'package:clipboard/widgets/nav_rail.dart';
import 'package:copycat_base/bloc/cloud_persistance_cubit/cloud_persistance_cubit.dart';
import 'package:copycat_base/bloc/offline_persistance_cubit/offline_persistance_cubit.dart';
import 'package:copycat_base/bloc/search_cubit/search_cubit.dart';
import 'package:copycat_base/constants/numbers/breakpoints.dart';
import 'package:copycat_base/constants/strings/asset_constants.dart';
import 'package:copycat_base/constants/widget_styles.dart';
import 'package:copycat_base/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  void loadMore(BuildContext context) {
    context.read<SearchCubit>().search(null);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = Breakpoints.isMobile(width);
    final floatingActionButton =
        getFloatingActionButton(context, 1, isMobile: isMobile);

    // WORKAROUND: somehow when click on an empty space this, the scaffold lost focus
    FocusScope.of(context).requestFocus();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + (isMobile ? 45 : 30),
        centerTitle: true,
        title: const SearchInputBar(),
      ),
      body: LeftNavRail(
        floatingActionButton: floatingActionButton,
        navbarActiveIndex: 1,
        child: MultiBlocListener(
          listeners: [
            BlocListener<OfflinePersistanceCubit, OfflinePersistanceState>(
              listenWhen: (previous, current) {
                switch (current) {
                  case OfflinePersistanceDeleted() || OfflinePersistanceSaved():
                    return true;
                  case _:
                    return false;
                }
              },
              listener: (context, state) {
                switch (state) {
                  case OfflinePersistanceDeleted(:final item):
                    context.read<SearchCubit>().deleteItem(item);
                  case OfflinePersistanceSaved(:final item):
                    context.read<SearchCubit>().put(item);
                  case _:
                }
              },
            ),
            BlocListener<CloudPersistanceCubit, CloudPersistanceState>(
                listener: (context, state) {
              switch (state) {
                case CloudPersistanceUploadingFile(:final item) ||
                      CloudPersistanceDownloadingFile(:final item):
                  context.read<SearchCubit>().put(item);
                  break;
              }
            }),
          ],
          child: BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              switch (state) {
                case InitialSearchState():
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          AssetConstants.search,
                          width: 250,
                        ),
                        height16,
                        Text(context.locale.findWhateverYouLooking),
                      ],
                    ),
                  );
                case SearchingState():
                  return const Center(child: CircularProgressIndicator());
                case SearchErrorState(:final failure):
                  return Center(
                    child: Text(failure.message),
                  );
                case SearchResultState(:final results, :final hasMore):
                  {
                    if (results.isEmpty) {
                      return Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              AssetConstants.noData,
                              width: 200,
                            ),
                            height16,
                            Text(
                              context.locale.noResultsWereFound,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    }

                    final hasMoreResult = hasMore ? 1 : 0;

                    return GridView.builder(
                      primary: true,
                      padding: isMobile ? insetLRB16 : insetRB16,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 250,
                        childAspectRatio: isMobile ? 2 / 3 : 1,
                      ),
                      itemCount: results.length + hasMoreResult,
                      itemBuilder: (context, index) {
                        if (index == results.length) {
                          return LoadMoreCard(loadMore: loadMore);
                        }

                        final item = results[index];
                        return ClipCard(
                          key: ValueKey("clipboard-item-//${item.id}"),
                          item: item,
                          // deleteAllowed: false,
                        );
                      },
                    );
                  }
              }
            },
          ),
        ),
      ),
    );
  }
}
