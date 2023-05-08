import 'package:coffee_shop_mobile/core/services/network_info.dart';
import 'package:coffee_shop_mobile/features/home/data/data_sources/product_remote_data_source.dart';
import 'package:coffee_shop_mobile/features/home/data/models/product_model.dart';
import 'package:coffee_shop_mobile/features/home/domain/entity/product_entity.dart';
import 'package:coffee_shop_mobile/core/exceptions/failure.dart';
import 'package:coffee_shop_mobile/features/home/domain/repository/i_product_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  ProductRepository(
    this.remoteDataSource,
    this.networkInfo,
  );

  final ProductRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, List<ProductEntity>>> getProductList() async {
    return await _getProductList(
      () => remoteDataSource.getProductList(),
    );
  }

  Future<Either<Failure, List<ProductEntity>>> _getProductList(
    Future<Either<Failure, List<ProductModel>>> Function() get,
  ) async {
    if (await networkInfo.isConnected) {
      final result = await get();
      return result.fold(
        (l) => Left(l),
        (r) => Right(r),
      );
    } else {
      return Left(CacheFailure());
    }
  }
}
