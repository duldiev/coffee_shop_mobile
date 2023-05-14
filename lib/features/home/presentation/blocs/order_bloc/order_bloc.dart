import 'package:bloc/bloc.dart';
import 'package:coffee_shop_mobile/features/home/domain/entity/product/order_product_entity.dart';
import 'package:coffee_shop_mobile/features/home/domain/repository/i_product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc(this.repository) : super(const OrderState.initial()) {
    on<GetOrders>(getOrders);
  }

  final IProductRepository repository;

  Future<void> getOrders(
    GetOrders event,
    Emitter<OrderState> emit,
  ) async {
    emit(const OrderState.loadInProgress());

    final result = await repository.getOrders();

    result.fold(
      (l) => emit(OrderState.loadInFailure(l.exception.message)),
      (r) => emit(
        r.isNotEmpty ? OrderState.loaded(r) : const OrderState.initial(),
      ),
    );
  }
}
