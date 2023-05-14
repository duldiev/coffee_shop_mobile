part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getCart() = GetCart;
  const factory CartEvent.removeItem(
    int productId,
  ) = RemoveItem;

  const factory CartEvent.checkout() = Checkout;
}
