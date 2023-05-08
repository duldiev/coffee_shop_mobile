// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String name;
  final int price;
  final String description;
  final String category;

  const ProductEntity({
    required this.name,
    required this.price,
    required this.description,
    required this.category,
  });

  @override
  List<Object?> get props => [
        name,
        price,
        description,
        category,
      ];
}
