import 'package:coffee_shop_mobile/features/home/domain/entity/product/order_product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_product_model.g.dart';

@JsonSerializable()
class OrderProductModel extends OrderProductEntity {
  const OrderProductModel({
    required super.id,
    required super.orderId,
    required super.name,
    required super.count,
    required super.price,
    required super.createdDate,
  });

  factory OrderProductModel.fromJson(Map<String, dynamic> json) =>
      _$OrderProductModelFromJson(json);
}
