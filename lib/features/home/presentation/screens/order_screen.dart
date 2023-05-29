import 'package:auto_route/auto_route.dart';
import 'package:coffee_shop_mobile/common/helpers/app_colors.dart';
import 'package:coffee_shop_mobile/common/helpers/date_converter.dart';
import 'package:coffee_shop_mobile/common/helpers/text_style_helper.dart';
import 'package:coffee_shop_mobile/common/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:coffee_shop_mobile/common/widgets/failure_content/failure_content.dart';
import 'package:coffee_shop_mobile/common/widgets/loader/loader.dart';
import 'package:coffee_shop_mobile/common/widgets/no_content_message/no_content_message.dart';
import 'package:coffee_shop_mobile/core/injectoin/injection.dart';
import 'package:coffee_shop_mobile/features/home/presentation/blocs/order_bloc/order_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage()
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderBloc>(
      create: (context) => getIt<OrderBloc>()..add(const GetOrders()),
      child: Scaffold(
        appBar: AppBarWidget(
          title: 'Orders',
          hideBackButton: false,
          onBack: () => context.router.pop(),
        ),
        body: const OrderList(),
      ),
    );
  }
}

class OrderList extends StatefulWidget {
  const OrderList({
    super.key,
  });

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  int totalPrice = 0;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => context.read<OrderBloc>().add(
            const GetOrders(),
          ),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(4.w),
        physics: const AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          height: 100.h,
          child: BlocConsumer<OrderBloc, OrderState>(
            listener: (context, state) {
              if (state is Loaded && state.orders.isNotEmpty) {
                int sum = 0;
                for (var i = 0; i < state.orders.length; i++) {
                  sum += state.orders[i].price * state.orders[i].count;
                }
                setState(() => totalPrice = sum);
              }
            },
            builder: (context, state) {
              return state.when(
                initial: () => const NoContentMessage(
                  title: 'No orders',
                  icon: Icons.filter_list_off_rounded,
                ),
                loadInProgress: () => const Loader(),
                loaded: (list) => Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Paid:',
                            style: TextStyleHelper.h4,
                          ),
                          Text(
                            '\$$totalPrice',
                            style: TextStyleHelper.h4.copyWith(
                              color: AppColors.success,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 1.5.h),
                    Column(
                      children: list
                          .map(
                            (order) => Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 2.h,
                                    horizontal: 4.w,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.light,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          // Image.file(File('')),
                                          Text(
                                            order.name,
                                            style: TextStyleHelper.h5,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${order.count} x \$${order.price}',
                                            style: TextStyleHelper.h5,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 0.5.h),
                                Padding(
                                  padding: EdgeInsets.only(right: 1.w),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      DateConverter.convertDate(
                                        order.createdDate,
                                      ),
                                      style: TextStyleHelper.h7.copyWith(
                                        color: AppColors.secondary,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2.h),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
                loadInFailure: (message) => FailureContent(
                  message: message,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
