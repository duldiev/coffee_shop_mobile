import 'package:coffee_shop_mobile/core/helpers/urls.dart';
import 'package:coffee_shop_mobile/core/exceptions/failure.dart';
import 'package:coffee_shop_mobile/core/services/base_repository.dart';
import 'package:coffee_shop_mobile/features/home/data/models/cart/cart_model.dart';
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
}

@LazySingleton(as: IProductRemoteDataSource)
class ProductRemoteDataSource extends BaseRepository
    implements IProductRemoteDataSource {
  @override
  Future<Either<Failure, List<ProductModel>>> getProductList() async {
    final data = call(
      RestMethod.get,
      URL.getProductList,
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
    final data = call(RestMethod.get, URL.getCart);
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
      URL.addToCart,
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
}
