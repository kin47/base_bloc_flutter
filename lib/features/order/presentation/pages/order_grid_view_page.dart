import 'package:base_bloc_3/base/base_widget.dart';
import 'package:base_bloc_3/common/index.dart';
import 'package:base_bloc_3/features/order/presentation/bloc/order_bloc.dart';
import 'package:base_bloc_3/features/order/widgets/order_grid_view_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderGridViewPage extends StatefulWidget {
  const OrderGridViewPage({super.key});

  @override
  State<OrderGridViewPage> createState() => _OrderGridViewPageState();
}

class _OrderGridViewPageState
    extends BaseState<OrderGridViewPage, OrderEvent, OrderState, OrderBloc> {
  bool isFloatingButtonShow = false;
  final TextEditingController _searchController = TextEditingController();

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
              return Column(
                children: [
                  CustomTextFieldSearch(
                    searchTextController: _searchController,
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        mainAxisExtent: 265,
                      ),
                      itemCount: bloc.state.bubbleTeas.length,
                      itemBuilder: (context, index) {
                        return OrderGridViewWidget(
                          imageUrl: bloc.state.bubbleTeas[index].image ?? "",
                          name: bloc.state.bubbleTeas[index].name ?? "",
                          price: bloc.state.bubbleTeas[index].price ?? 0,
                        );
                      },
                    ),
                  ),
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
        onTap: () {},
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          color: AppColors.alertSuccess,
          child: Row(
            children: [
              const SizedBox(width: 10),
              Text(
                'cart'.tr(),
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