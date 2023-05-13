part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = Initial;
  const factory ProductsState.loadInProgress() = LoadInProgress;
  const factory ProductsState.loaded(
    List<ProductEntity> list,
  ) = Loaded;
  const factory ProductsState.loadInFailure(
    String message,
  ) = LoadInFailure;
}
