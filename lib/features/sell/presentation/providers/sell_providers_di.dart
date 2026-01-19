import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/features/sell/data/datasources/sell_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/sell/data/repositories/sell_repository_impl.dart';
import 'package:ticket_platform_mobile/features/sell/domain/repositories/sell_repository.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/cancel_sell_ticket_usecase.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/get_my_sell_tickets_usecase.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/get_sell_categories_usecase.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/get_sell_events_usecase.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/get_sell_features_usecase.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/get_sell_original_price_usecase.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/get_sell_schedules_usecase.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/get_sell_seat_options_usecase.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/refresh_ticket_image_urls_usecase.dart';
import 'package:ticket_platform_mobile/features/sell/domain/usecases/register_sell_ticket_usecase.dart';

part 'sell_providers_di.g.dart';

SellRemoteDataSource sellRemoteDataSource(Ref ref) {
  return SellRemoteDataSourceImpl(ref.watch(dioProvider));
}

SellRepository sellRepository(Ref ref) {
  return SellRepositoryImpl(ref.watch(sellRemoteDataSourceProvider));
}

@riverpod
GetSellCategoriesUsecase getSellCategoriesUsecase(Ref ref) {
  return GetSellCategoriesUsecase(ref.watch(sellRepositoryProvider));
}

@riverpod
GetSellEventsUsecase getSellEventsUsecase(Ref ref) {
  return GetSellEventsUsecase(ref.watch(sellRepositoryProvider));
}

@riverpod
GetSellSchedulesUsecase getSellSchedulesUsecase(Ref ref) {
  return GetSellSchedulesUsecase(ref.watch(sellRepositoryProvider));
}

@riverpod
GetSellSeatOptionsUsecase getSellSeatOptionsUsecase(Ref ref) {
  return GetSellSeatOptionsUsecase(ref.watch(sellRepositoryProvider));
}

@riverpod
RegisterSellTicketUsecase registerSellTicketUsecase(Ref ref) {
  return RegisterSellTicketUsecase(ref.watch(sellRepositoryProvider));
}

@riverpod
GetSellFeaturesUsecase getSellFeaturesUsecase(Ref ref) {
  return GetSellFeaturesUsecase(ref.watch(sellRepositoryProvider));
}

@riverpod
GetSellOriginalPriceUsecase getSellOriginalPriceUsecase(Ref ref) {
  return GetSellOriginalPriceUsecase(ref.watch(sellRepositoryProvider));
}

@riverpod
GetMySellTicketsUsecase getMySellTicketsUsecase(Ref ref) {
  return GetMySellTicketsUsecase(ref.watch(sellRepositoryProvider));
}

@riverpod
CancelSellTicketUsecase cancelSellTicketUsecase(Ref ref) {
  return CancelSellTicketUsecase(ref.watch(sellRepositoryProvider));
}

@riverpod
RefreshTicketImageUrlsUsecase refreshTicketImageUrlsUsecase(Ref ref) {
  return RefreshTicketImageUrlsUsecase(ref.watch(sellRepositoryProvider));
}
