import 'package:coffee_shop_mobile/core/exceptions/failure.dart';
import 'package:coffee_shop_mobile/features/home/domain/entity/cart/cart_entity.dart';
import 'package:coffee_shop_mobile/features/home/domain/entity/product/product_entity.dart';
import 'package:dartz/dartz.dart';

abstract class IProductRepository {
  Future<Either<Failure, List<ProductEntity>>> getProductList();

  Future<Either<Failure, CartEntity>> getCart();

  Future<Either<Failure, Unit>> addToCart(
    int count,
    int productId,
  );
}
