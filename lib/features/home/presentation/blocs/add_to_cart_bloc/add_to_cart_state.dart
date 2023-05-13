part of 'add_to_cart_bloc.dart';

@freezed
class AddToCartState with _$AddToCartState {
  factory AddToCartState({
    required int count,
    required bool loading,
    required bool loaded,
  }) = _AddToCartState;

  const AddToCartState._();

  factory AddToCartState.initial() => AddToCartState(
        count: 0,
        loading: false,
        loaded: false,
      );
}
