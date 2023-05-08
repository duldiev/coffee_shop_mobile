part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = Initial;
  const factory ProductsState.loadInProgress() = LoadInProgress;
  const factory ProductsState.loaded() = Loaded;
  const factory ProductsState.loadInFailure() = LoadInFailure;
}
