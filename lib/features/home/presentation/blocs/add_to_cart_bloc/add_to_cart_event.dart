part of 'add_to_cart_bloc.dart';

@freezed
class AddToCartEvent with _$AddToCartEvent {
  const factory AddToCartEvent.addToCart(
    int productId,
  ) = AddToCart;

  const factory AddToCartEvent.increaseCount() = IncreaseCount;
  const factory AddToCartEvent.decreaseCount() = DecreaseCount;

  const factory AddToCartEvent.resetCount() = ResetCount;
}
