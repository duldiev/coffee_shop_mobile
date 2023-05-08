import 'package:coffee_shop_mobile/features/home/domain/entity/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel extends ProductEntity {
  const ProductModel({
    required super.name,
    required super.price,
    required super.description,
    required super.category,
  });

  factory ProductModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductModelFromJson(json);
}
