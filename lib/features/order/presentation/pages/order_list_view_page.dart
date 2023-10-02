import 'package:base_bloc_3/base/base_widget.dart';
import 'package:base_bloc_3/common/index.dart';
import 'package:base_bloc_3/features/order/presentation/bloc/order_bloc.dart';
import 'package:base_bloc_3/features/order/widgets/bottom_sheet_option_button.dart';
import 'package:base_bloc_3/features/order/widgets/order_list_view_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderListViewPage extends StatefulWidget {
  const OrderListViewPage({super.key});

  @override
  State<OrderListViewPage> createState() => _OrderListViewPageState();
}

class _OrderListViewPageState
    extends BaseState<OrderListViewPage, OrderEvent, OrderState, OrderBloc>
    with TickerProviderStateMixin {
  final TextEditingController _searchController = TextEditingController();
  bool isFloatingButtonShow = false;
  List<String> options = [
    'deal_today'.tr(),
    'for_you'.tr(),
    'drawer_contribution'.tr(),
    'drawer_critics'.tr(),
    'drawer_bubble_tea'.tr(),
    'drawer_fruit_tea'.tr(),
    'drawer_lemon_tea'.tr(),
    'drawer_yogurt'.tr(),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    bloc.add(const OrderEvent.getData());
  }

  void displayModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 30),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return BottomSheetOptionButton(
                    title: options[index],
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: options.length,
              ),
              const SizedBox(height: 30),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget renderUI(BuildContext context) {
    return NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        if (notification.direction == ScrollDirection.forward &&
            !isFloatingButtonShow) {
          setState(() {
            isFloatingButtonShow = true;
          });
        } else if (notification.direction == ScrollDirection.reverse &&
            isFloatingButtonShow) {
          setState(() {
            isFloatingButtonShow = false;
          });
        }
        return true;
      },
      child: BaseScaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: BlocBuilder<OrderBloc, OrderState>(
            builder: (context, state) {
              return Stack(
                children: [
                  Column(
                    children: [
                      CustomTextFieldSearch(
                        searchTextController: _searchController,
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          separatorBuilder: (context, index) => const Divider(),
                          itemBuilder: (context, index) {
                            return OrderListViewWidget(
                              imageUrl:
                                  bloc.state.bubbleTeas[index].image ?? "",
                              name: bloc.state.bubbleTeas[index].name ?? "",
                              price: bloc.state.bubbleTeas[index].price ?? 0,
                              isBestSeller:
                                  bloc.state.bubbleTeas[index].bestSeller ??
                                      false,
                            );
                          },
                          itemCount: bloc.state.bubbleTeas.length,
                        ),
                      ),
                    ],
                  ),
                  isFloatingButtonShow
                      ? _buildFloatingBarWidget(context)
                      : const SizedBox.shrink(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildFloatingBarWidget(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: GestureDetector(
        onTap: () => displayModalBottomSheet(context),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          color: AppColors.alertSuccess,
          child: Row(
            children: [
              const SizedBox(width: 10),
              Text(
                'Giỏ hàng',
                style: AppStyles.s16w700.copyWith(
                  color: AppColors.white,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                '2 món',
                style: AppStyles.s16w400.copyWith(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
