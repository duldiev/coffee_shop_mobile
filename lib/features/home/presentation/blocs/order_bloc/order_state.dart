part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;
  const factory OrderState.loadInProgress() = LoadInProgress;
  const factory OrderState.loaded(
    List<OrderProductEntity> orders,
  ) = Loaded;
  const factory OrderState.loadInFailure(
    String message,
  ) = LoadInFailure;
}
