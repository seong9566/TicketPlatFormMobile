import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_platform_mobile/core/network/dio_provider.dart';
import 'package:ticket_platform_mobile/features/payment/data/datasources/payment_remote_data_source.dart';
import 'package:ticket_platform_mobile/features/payment/data/repositories/payment_repository_impl.dart';
import 'package:ticket_platform_mobile/features/payment/domain/repositories/payment_repository.dart';
import 'package:ticket_platform_mobile/features/payment/domain/usecases/payment_usecases.dart';

part 'payment_providers_di.g.dart';

@riverpod
PaymentRemoteDataSource paymentRemoteDataSource(Ref ref) {
  final dio = ref.watch(dioProvider);
  return PaymentRemoteDataSourceImpl(dio);
}

@riverpod
PaymentRepository paymentRepository(Ref ref) {
  final remoteDataSource = ref.watch(paymentRemoteDataSourceProvider);
  return PaymentRepositoryImpl(remoteDataSource);
}

@riverpod
RequestPaymentUseCase requestPaymentUseCase(Ref ref) {
  final repository = ref.watch(paymentRepositoryProvider);
  return RequestPaymentUseCase(repository);
}

@riverpod
ConfirmPaymentUseCase confirmPaymentUseCase(Ref ref) {
  final repository = ref.watch(paymentRepositoryProvider);
  return ConfirmPaymentUseCase(repository);
}

@riverpod
CancelPaymentUseCase cancelPaymentUseCase(Ref ref) {
  final repository = ref.watch(paymentRepositoryProvider);
  return CancelPaymentUseCase(repository);
}
