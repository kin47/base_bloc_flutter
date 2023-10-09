import 'package:base_bloc_3/base/base_widget.dart';
import 'package:base_bloc_3/common/index.dart';
import 'package:base_bloc_3/features/order/presentation/bloc/order_bloc.dart';
import 'package:base_bloc_3/features/order/widgets/order_grid_view_item_widget.dart';
import 'package:base_bloc_3/features/order/widgets/order_list_view_item_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderHorizontalListViewPage extends StatefulWidget {
  const OrderHorizontalListViewPage({super.key});

  @override
  State<OrderHorizontalListViewPage> createState() =>
      _OrderHorizontalListViewPageState();
}

class _OrderHorizontalListViewPageState extends BaseState<
    OrderHorizontalListViewPage, OrderEvent, OrderState, OrderBloc> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    bloc.pagingController.addPageRequestListener((pageKey) {
      bloc.add(
        OrderEvent.getBubbleTeas(
          bubbleTeas: bloc.state.bubbleTeas,
          offset: pageKey,
        ),
      );
    });
  }

  @override
  Widget renderUI(BuildContext context) {
    return BaseScaffold(
      body: SingleChildScrollView(
        child: BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.w, bottom: 10.h),
                  child: Text(
                    'deal_today'.tr(),
                    style: AppStyles.s20w600.copyWith(
                      color: AppColors.red,
                    ),
                  ),
                ),
                _buildDealTodayListWidget(),
                Padding(
                  padding: const EdgeInsets.only(left: 24, bottom: 10, top: 30),
                  child: Text(
                    'for_you'.tr(),
                    style: AppStyles.s20w600,
                  ),
                ),
                _buildForYouListWidget(),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildDealTodayListWidget() {
    return SizedBox(
      height: 140,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 10),
            ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 10),
                          OrderListViewItemWidget(
                            imageUrl: bloc.state.bubbleTeas[index].image ?? "",
                            name: bloc.state.bubbleTeas[index].name ?? "",
                            price: bloc.state.bubbleTeas[index].price ?? 0,
                            isBestSeller:
                                bloc.state.bubbleTeas[index].bestSeller ??
                                    false,
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ],
                  ),
                );
              },
              itemCount: bloc.state.bubbleTeas.length,
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildForYouListWidget() {
    return SizedBox(
      height: 280,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 20),
            ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => const SizedBox(width: 20),
              itemBuilder: (context, index) {
                return SizedBox(
                  width: (MediaQuery.of(context).size.width - 52) / 2,
                  child: OrderGridViewItemWidget(
                    imageUrl: bloc.state.bubbleTeas[index].image ?? "",
                    name: bloc.state.bubbleTeas[index].name ?? "",
                    price: bloc.state.bubbleTeas[index].price ?? 0,
                    isBestSeller:
                        bloc.state.bubbleTeas[index].bestSeller ?? false,
                  ),
                );
              },
              itemCount: bloc.state.bubbleTeas.length,
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
