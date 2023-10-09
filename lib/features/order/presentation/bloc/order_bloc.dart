import 'package:base_bloc_3/base/bloc/index.dart';
import 'package:base_bloc_3/common/index.dart';
import 'package:base_bloc_3/features/order/data/model/bubble_tea/bubble_tea.dart';
import 'package:base_bloc_3/features/order/domain/use_case/order_use_case.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';

part 'order_bloc.freezed.dart';
part 'order_bloc.g.dart';
part 'order_event.dart';
part 'order_state.dart';

@injectable
class OrderBloc extends BaseBloc<OrderEvent, OrderState>
    with BaseCommonMethodMixin {
  OrderBloc(this._useCase) : super(OrderState.init()) {
    on<OrderEvent>((event, emit) async {
      await event.when(
        getData: () => onGetData(emit),
        getBubbleTeas: (List<BubbleTea> bubbleTeas, int offset) =>
            onGetBubbleTeas(emit, bubbleTeas, offset),
        displayDropdownMenu: () => onDisplayDropdownMenu(emit),
        displaySearchBar: () => onDisplaySearchBar(emit),
      );
    });
  }

  final OrderUseCase _useCase;
  final PagingController<int, BubbleTea> pagingController =
      PagingController(firstPageKey: -30);

  Future onGetData(Emitter<OrderState> emit) async {
    emit(state.copyWith(status: BaseStateStatus.loading));
    final result = await _useCase.getData(offset: 0);
    pagingControllerOnLoad(
      0,
      pagingController,
      result,
      onSuccess: () {
        emit(state.copyWith(bubbleTeas: pagingController.itemList));
      },
    );
  }

  Future onGetBubbleTeas(
      Emitter<OrderState> emit, List<BubbleTea> bubbleTeas, int offset) async {
    final result = await _useCase.getData(offset: offset);
    pagingControllerOnLoad(
      offset,
      pagingController,
      result,
      limit: 30,
      onSuccess: () {
        emit(state.copyWith(bubbleTeas: pagingController.itemList));
      },
    );
  }

  Future onDisplaySearchBar(Emitter<OrderState> emit) async {
    emit(state.copyWith(displaySearch: true));
  }

  Future onDisplayDropdownMenu(Emitter<OrderState> emit) async {
    emit(state.copyWith(displaySearch: false));
  }
}
