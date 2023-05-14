import 'package:coffee_shop_mobile/core/helpers/urls.dart';
import 'package:coffee_shop_mobile/core/exceptions/failure.dart';
import 'package:coffee_shop_mobile/core/services/base_repository.dart';
import 'package:coffee_shop_mobile/features/home/data/models/cart/cart_model.dart';
import 'package:coffee_shop_mobile/features/home/data/models/product/order_product_model.dart';
import 'package:coffee_shop_mobile/features/home/data/models/product/product_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class IProductRemoteDataSource {
  Future<Either<Failure, List<ProductModel>>> getProductList();
  Future<Either<Failure, CartModel>> getCart();

  Future<Either<Failure, Unit>> addToCart(
    int count,
    int productId,
  );

  Future<Either<Failure, Unit>> removeFromCart(
    int productId,
  );

  Future<Either<Failure, List<OrderProductModel>>> getOrders();

  Future<Either<Failure, Unit>> checkoutItems();
}

@LazySingleton(as: IProductRemoteDataSource)
class ProductRemoteDataSource extends BaseRepository
    implements IProductRemoteDataSource {
  @override
  Future<Either<Failure, List<ProductModel>>> getProductList() async {
    final data = call(
      RestMethod.get,
      URLs.getProductList,
    );
    return data.then<Either<Failure, List<ProductModel>>>(
      (either) => either.fold(
        (l) => Left<Failure, List<ProductModel>>(l),
        (r) => Right<Failure, List<ProductModel>>(
          (r as List).map((e) => ProductModel.fromJson(e)).toList(),
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, CartModel>> getCart() async {
    final data = call(RestMethod.get, URLs.getCart);
    return data.then<Either<Failure, CartModel>>(
      (either) => either.fold(
        (l) => Left<Failure, CartModel>(l),
        (r) => Right<Failure, CartModel>(
          CartModel.fromJsom(r),
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, Unit>> addToCart(
    int count,
    int productId,
  ) {
    final data = call(
      RestMethod.post,
      URLs.addToCart,
      body: {
        'count': count,
        'product': productId,
      },
    );
    return data.then<Either<Failure, Unit>>(
      (either) => either.fold(
        (l) => Left<Failure, Unit>(l),
        (r) => const Right<Failure, Unit>(unit),
      ),
    );
  }

  @override
  Future<Either<Failure, Unit>> removeFromCart(
    int productId,
  ) async {
    final data = call(
      RestMethod.delete,
      URLs.deleteItemCart(productId),
    );
    return data.then<Either<Failure, Unit>>(
      (either) => either.fold(
        (l) => Left<Failure, Unit>(l),
        (r) => const Right<Failure, Unit>(unit),
      ),
    );
  }

  @override
  Future<Either<Failure, List<OrderProductModel>>> getOrders() async {
    final data = call(
      RestMethod.get,
      URLs.order,
    );
    return data.then<Either<Failure, List<OrderProductModel>>>(
      (either) => either.fold(
        (l) => Left<Failure, List<OrderProductModel>>(l),
        (r) => Right<Failure, List<OrderProductModel>>(
          (r as List).map((e) => OrderProductModel.fromJson(e)).toList(),
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, Unit>> checkoutItems() async {
    final data = call(
      RestMethod.post,
      URLs.order,
    );
    return data.then<Either<Failure, Unit>>(
      (either) => either.fold(
        (l) => Left<Failure, Unit>(l),
        (r) => const Right<Failure, Unit>(unit),
      ),
    );
  }
}
