import 'package:bloc/bloc.dart';
import 'package:coffee_shop_mobile/features/home/domain/entity/cart/cart_entity.dart';
import 'package:coffee_shop_mobile/features/home/domain/repository/i_product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(this.repository) : super(const CartState.initial()) {
    on<GetCart>(getCart);
  }

  final IProductRepository repository;

  Future<void> getCart(
    GetCart event,
    Emitter<CartState> emit,
  ) async {
    emit(const CartState.loadInProgress());

    final result = await repository.getCart();

    result.fold(
      (l) => emit(CartState.loadInFailure(l.exception.message)),
      (r) => emit(CartState.loaded(r)),
    );
  }
}
