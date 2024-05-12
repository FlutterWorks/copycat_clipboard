import 'package:clipboard/common/failure.dart';
import 'package:clipboard/common/paginated_results.dart';
import 'package:clipboard/db/clip_collection/clipcollection.dart';
import 'package:clipboard/db/clipboard_item/clipboard_item.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class SyncRepository {
  FailureOr<PaginatedResult<ClipCollection>> getLatestClipCollections({
    required String userId,
    int limit = 100,
    int offset = 0,
    String? excludeDeviceId,
    DateTime? lastSynced,
  });

  FailureOr<PaginatedResult<ClipboardItem>> getLatestClipboardItems({
    required String userId,
    int limit = 100,
    int offset = 0,
    String? excludeDeviceId,
    DateTime? lastSynced,
  });

  FailureOr<PaginatedResult<ClipCollection>> getDeletedClipCollections({
    required String userId,
    int limit = 100,
    int offset = 0,
    String? excludeDeviceId,
    DateTime? lastSynced,
  });

  FailureOr<PaginatedResult<ClipboardItem>> getDeletedClipboardItems({
    required String userId,
    int limit = 100,
    int offset = 0,
    String? excludeDeviceId,
    DateTime? lastSynced,
  });
}

@LazySingleton(as: SyncRepository)
class SyncRepositoryImpl implements SyncRepository {
  final SupabaseClient client;
  final String clipboardItemsTable = "clipboard_items";
  final String clipCollectionsTable = "clip_collections";

  SyncRepositoryImpl(this.client);

  PostgrestClient get db => client.rest;

  @override
  FailureOr<PaginatedResult<ClipboardItem>> getLatestClipboardItems({
    required String userId,
    int limit = 100,
    int offset = 0,
    String? excludeDeviceId,
    DateTime? lastSynced,
  }) async {
    try {
      var query = db
          .from(clipboardItemsTable)
          .select()
          .eq("userId", userId)
          .isFilter("deletedAt", null);

      if (lastSynced != null) {
        final isoDate = lastSynced
            .subtract(const Duration(seconds: 5))
            .toUtc()
            .toIso8601String();
        query = query.gt(
          "modified",
          isoDate,
        );
      }

      if (excludeDeviceId != null && excludeDeviceId != "") {
        query = query.neq("deviceId", excludeDeviceId);
      }

      final docs = await query.order("modified").range(offset, offset + limit);
      final items = docs.map((e) => ClipboardItem.fromJson(e)).toList();
      return Right(
        PaginatedResult(
          results: items,
          hasMore: items.length > limit,
        ),
      );
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  FailureOr<PaginatedResult<ClipCollection>> getLatestClipCollections({
    required String userId,
    int limit = 100,
    int offset = 0,
    String? excludeDeviceId,
    DateTime? lastSynced,
  }) async {
    try {
      var query = db
          .from(clipCollectionsTable)
          .select()
          .eq("userId", userId)
          .isFilter("deletedAt", null);

      if (lastSynced != null) {
        final isoDate = lastSynced
            .subtract(const Duration(seconds: 5))
            .toUtc()
            .toIso8601String();
        query = query.gt(
          "modified",
          isoDate,
        );
      }
      if (excludeDeviceId != null && excludeDeviceId != "") {
        query = query.neq("deviceId", excludeDeviceId);
      }
      final docs = await query.order("modified").range(offset, offset + limit);
      final items = docs.map((e) => ClipCollection.fromJson(e)).toList();
      return Right(
        PaginatedResult(
          results: items,
          hasMore: items.length > limit,
        ),
      );
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  FailureOr<PaginatedResult<ClipboardItem>> getDeletedClipboardItems({
    required String userId,
    int limit = 100,
    int offset = 0,
    String? excludeDeviceId,
    DateTime? lastSynced,
  }) async {
    if (lastSynced == null) return Right(PaginatedResult.empty());
    try {
      final isoDate = lastSynced
          .subtract(const Duration(seconds: 5))
          .toUtc()
          .toIso8601String();
      var query = db
          .from(clipboardItemsTable)
          .select()
          .eq("userId", userId)
          .gte("deletedAt", isoDate);

      if (excludeDeviceId != null && excludeDeviceId != "") {
        query = query.neq("deviceId", excludeDeviceId);
      }
      final docs = await query.order("modified").range(offset, offset + limit);
      final items = docs.map((e) => ClipboardItem.fromJson(e)).toList();
      return Right(
        PaginatedResult(
          results: items,
          hasMore: items.length > limit,
        ),
      );
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  FailureOr<PaginatedResult<ClipCollection>> getDeletedClipCollections({
    required String userId,
    int limit = 100,
    int offset = 0,
    String? excludeDeviceId,
    DateTime? lastSynced,
  }) async {
    if (lastSynced == null) return Right(PaginatedResult.empty());
    try {
      final isoDate = lastSynced
          .subtract(const Duration(seconds: 5))
          .toUtc()
          .toIso8601String();
      var query = db
          .from(clipCollectionsTable)
          .select()
          .eq("userId", userId)
          .gte("deletedAt", isoDate);

      if (excludeDeviceId != null && excludeDeviceId != "") {
        query = query.neq("deviceId", excludeDeviceId);
      }
      final docs = await query.order("modified").range(offset, offset + limit);
      final items = docs.map((e) => ClipCollection.fromJson(e)).toList();
      return Right(
        PaginatedResult(
          results: items,
          hasMore: items.length > limit,
        ),
      );
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
