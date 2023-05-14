// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class CartProductEntity extends Equatable {
  final int id;
  final String name;
  final int price;
  final int amount;

  const CartProductEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.amount,
  });

  @override
  List<Object?> get props => [
        name,
        price,
        amount,
      ];
}
