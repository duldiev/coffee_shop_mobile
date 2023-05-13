import 'package:coffee_shop_mobile/features/home/data/models/product/cart_product_model.dart';
import 'package:coffee_shop_mobile/features/home/domain/entity/cart/cart_entity.dart';

class CartModel extends CartEntity {
  const CartModel({
    required super.totalPrice,
    required super.productList,
  });

  factory CartModel.fromJsom(Map<String, dynamic> json) => CartModel(
        totalPrice: json['total_price'] as int,
        productList: (json['cartitem_set'] as List)
            .map(
              (e) => CartProductModel.fromJsom(e),
            )
            .toList(),
      );
}
