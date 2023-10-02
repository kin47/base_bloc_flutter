import 'package:base_bloc_3/base/bloc/index.dart';
import 'package:base_bloc_3/features/order/data/model/bubble_tea/bubble_tea.dart';
import 'package:base_bloc_3/features/order/domain/entity/bubble_tea_entity.dart';
import 'package:base_bloc_3/features/order/domain/use_case/order_use_case.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_bloc.freezed.dart';
part 'order_bloc.g.dart';
part 'order_event.dart';
part 'order_state.dart';

@injectable
class OrderBloc extends BaseBloc<OrderEvent, OrderState> {
  OrderBloc(this._useCase) : super(OrderState.init()) {
    on<OrderEvent>((event, emit) async {
      await event.when(
        getData: () => onGetData(emit),
        getBubbleTeas: (List<BubbleTea> bubbleTeas, int offset) =>
            onGetBubbleTeas(emit, bubbleTeas, offset),
      );
    });
  }

  final OrderUseCase _useCase;

  Future onGetData(Emitter<OrderState> emit) async {
    emit(state.copyWith(status: BaseStateStatus.loading));
    final result = await _useCase.getData();
    result.fold(
      (l) => emit(
          state.copyWith(status: BaseStateStatus.failed, message: "Error")),
      (r) =>
          emit(state.copyWith(status: BaseStateStatus.success, bubbleTeas: r)),
    );
  }

  Future onGetBubbleTeas(
      Emitter<OrderState> emit, List<BubbleTea> bubbleTeas, int offset) async {
    emit(state.copyWith(status: BaseStateStatus.loading));
    final result = await _useCase.getData();
    result.fold(
      (l) => emit(
          state.copyWith(status: BaseStateStatus.failed, message: "Error")),
      (r) =>
          emit(state.copyWith(status: BaseStateStatus.success, bubbleTeas: r)),
    );
  }
}
