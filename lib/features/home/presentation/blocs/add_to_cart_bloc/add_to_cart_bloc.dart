import 'package:bloc/bloc.dart';
import 'package:coffee_shop_mobile/features/home/domain/repository/i_product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_to_cart_event.dart';
part 'add_to_cart_state.dart';
part 'add_to_cart_bloc.freezed.dart';

@injectable
class AddToCartBloc extends Bloc<AddToCartEvent, AddToCartState> {
  AddToCartBloc(
    this.repository,
  ) : super(AddToCartState.initial()) {
    on<AddToCart>(addToCart);
    on<IncreaseCount>(increaseCount);
    on<DecreaseCount>(decreaseCount);
    on<ResetCount>(resetCount);
  }

  final IProductRepository repository;

  Future<void> addToCart(
    AddToCart event,
    Emitter<AddToCartState> emit,
  ) async {
    emit(state.copyWith(loading: true, loaded: false));

    final result = await repository.addToCart(
      state.count,
      event.productId,
    );

    result.fold(
      (l) => emit(state.copyWith(loading: false, loaded: false)),
      (r) => emit(state.copyWith(loading: false, loaded: true)),
    );

    add(const ResetCount());
  }

  void increaseCount(
    IncreaseCount event,
    Emitter<AddToCartState> emit,
  ) =>
      emit(state.copyWith(
        count: state.count >= 0 ? state.count + 1 : 0,
      ));

  void decreaseCount(
    DecreaseCount event,
    Emitter<AddToCartState> emit,
  ) =>
      emit(state.copyWith(
        count: state.count > 0 ? state.count - 1 : 0,
      ));

  void resetCount(
    ResetCount event,
    Emitter<AddToCartState> emit,
  ) =>
      emit(state.copyWith(count: 0));
}
