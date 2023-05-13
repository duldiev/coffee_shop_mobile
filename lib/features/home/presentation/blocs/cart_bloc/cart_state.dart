part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.loadInProgress() = LoadInProgress;
  const factory CartState.loaded(
    CartEntity cart,
  ) = Loaded;
  const factory CartState.loadInFailure(
    String message,
  ) = LoadInFailure;
}
