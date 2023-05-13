import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final int id;
  final String name;
  final int price;
  final String description;
  final String image;
  final int category;

  const ProductEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.category,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        price,
        description,
        category,
      ];
}
