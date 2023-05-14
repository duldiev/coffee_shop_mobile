// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class OrderProductEntity extends Equatable {
  @JsonKey(name: 'product')
  final int id;
  @JsonKey(name: 'id')
  final int orderId;
  @JsonKey(name: 'product_name')
  final String name;
  final int count;
  @JsonKey(name: 'product_price')
  final int price;
  @JsonKey(name: 'created_date')
  final DateTime createdDate;

  const OrderProductEntity({
    required this.id,
    required this.orderId,
    required this.name,
    required this.count,
    required this.price,
    required this.createdDate,
  });

  @override
  List<Object?> get props => [
        id,
        orderId,
        name,
        count,
        price,
        createdDate,
      ];
}
