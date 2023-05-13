import 'package:coffee_shop_mobile/features/home/domain/entity/product/cart_product_entity.dart';

class CartProductModel extends CartProductEntity {
  const CartProductModel({
    required super.name,
    required super.price,
    required super.amount,
  });

  factory CartProductModel.fromJsom(
    Map<String, dynamic> json,
  ) =>
      CartProductModel(
        name: json['product_name'] as String,
        price: json['product_price'] as int,
        amount: json['count'] as int,
      );
}
