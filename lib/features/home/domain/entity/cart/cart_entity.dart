// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_shop_mobile/features/home/domain/entity/product/cart_product_entity.dart';
import 'package:equatable/equatable.dart';

class CartEntity extends Equatable {
  final int totalPrice;
  final List<CartProductEntity> productList;

  const CartEntity({
    required this.totalPrice,
    required this.productList,
  });

  @override
  List<Object?> get props => [
        totalPrice,
        productList,
      ];
}
