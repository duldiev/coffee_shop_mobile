import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:coffee_shop_mobile/features/home/domain/entity/product/product_entity.dart';
import 'package:coffee_shop_mobile/features/home/domain/repository/i_product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

@injectable
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc(
    this.repository,
  ) : super(const ProductsState.initial()) {
    on<GetList>(getList);
  }

  final IProductRepository repository;

  Future<void> getList(
    GetList event,
    Emitter<ProductsState> emit,
  ) async {
    emit(const ProductsState.loadInProgress());

    final result = await repository.getProductList();

    result.fold(
      (l) => emit(ProductsState.loadInFailure(l.exception.message)),
      (r) {
        emit(ProductsState.loaded(r));
      },
    );
  }
}
