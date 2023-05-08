import 'package:coffee_shop_mobile/core/constants/urls.dart';
import 'package:coffee_shop_mobile/core/exceptions/failure.dart';
import 'package:coffee_shop_mobile/core/services/base_repository.dart';
import 'package:coffee_shop_mobile/features/home/data/models/product_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class IProductRemoteDataSource {
  Future<Either<Failure, List<ProductModel>>> getProductList();
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
}
