import 'package:base_bloc_3/base/base_widget.dart';
import 'package:base_bloc_3/common/index.dart';
import 'package:base_bloc_3/features/order/presentation/bloc/order_bloc.dart';
import 'package:base_bloc_3/features/order/widgets/bottom_sheet_option_button.dart';
import 'package:base_bloc_3/features/order/widgets/order_list_view_item_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
  int numberOfCartItem = 0;
  int totalPrice = 0;

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

  void _displayModalBottomSheet(BuildContext context) {
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
                      state.displaySearch
                          ? _buildSearchBarWidget()
                          : _buildDropdownMenuWidget(context),
                      const SizedBox(height: 20),
                      Expanded(
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          separatorBuilder: (context, index) => const Divider(),
                          itemBuilder: (context, index) {
                            return Slidable(
                              endActionPane: ActionPane(
                                extentRatio: 0.25,
                                motion: const ScrollMotion(),
                                children: [
                                  SlidableAction(
                                    onPressed: (context) {},
                                    backgroundColor: AppColors.red,
                                    foregroundColor: Colors.white,
                                    icon: Icons.delete,
                                    label: 'Delete',
                                  ),
                                ],
                              ),
                              child: OrderListViewItemWidget(
                                imageUrl:
                                    bloc.state.bubbleTeas[index].image ?? "",
                                name: bloc.state.bubbleTeas[index].name ?? "",
                                price: bloc.state.bubbleTeas[index].price ?? 0,
                                isBestSeller:
                                    bloc.state.bubbleTeas[index].bestSeller ??
                                        false,
                                onAddItem: () {
                                  setState(() {
                                    totalPrice += bloc.state.bubbleTeas[index].price ?? 0;
                                    numberOfCartItem++;
                                  });
                                },
                              ),
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

  Widget _buildSearchBarWidget() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 40,
            child: CustomTextFieldSearch(
              onSearch: (String value) {},
              searchTextController: _searchController,
            ),
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            bloc.add(const OrderEvent.displayDropdownMenu());
          },
          child: Text(
            'cancel'.tr(),
          ),
        )
      ],
    );
  }

  Widget _buildDropdownMenuWidget(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => _displayModalBottomSheet(context),
            child: Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: const BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'deal_today'.tr(),
                    style: AppStyles.s15w500,
                  ),
                  const Icon(Icons.arrow_drop_down_outlined)
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            bloc.add(const OrderEvent.displaySearchBar());
          },
          child: Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: const BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                ),
                const SizedBox(width: 10),
                Text(
                  'find'.tr(),
                  style: AppStyles.s15w500,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFloatingBarWidget(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          color: AppColors.alertSuccess,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Giỏ hàng',
                    style: AppStyles.s16w700.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '$numberOfCartItem món',
                    style: AppStyles.s16w400.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
              Text(
                '${totalPrice.toString().formatPrice} đ',
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
