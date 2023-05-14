// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderProductModel _$OrderProductModelFromJson(Map<String, dynamic> json) =>
    OrderProductModel(
      id: json['product'] as int,
      orderId: json['id'] as int,
      name: json['product_name'] as String,
      count: json['count'] as int,
      price: json['product_price'] as int,
      createdDate: DateTime.parse(json['created_date'] as String),
    );

Map<String, dynamic> _$OrderProductModelToJson(OrderProductModel instance) =>
    <String, dynamic>{
      'product': instance.id,
      'id': instance.orderId,
      'product_name': instance.name,
      'count': instance.count,
      'product_price': instance.price,
      'created_date': instance.createdDate.toIso8601String(),
    };
