// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class CartProductEntity extends Equatable {
  final int id;
  final int productId;
  final String name;
  final int price;
  final int amount;

  const CartProductEntity({
    required this.id,
    required this.productId,
    required this.name,
    required this.price,
    required this.amount,
  });

  @override
  List<Object?> get props => [
        id,
        productId,
        name,
        price,
        amount,
      ];
}
