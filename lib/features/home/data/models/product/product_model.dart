import 'package:coffee_shop_mobile/features/home/domain/entity/product/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel extends ProductEntity {
  const ProductModel({
    required super.id,
    required super.name,
    required super.price,
    required super.description,
    required super.image,
    required super.category,
  });

  factory ProductModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductModelFromJson(json);
}
