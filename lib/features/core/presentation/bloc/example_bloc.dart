import 'package:base_bloc_3/base/bloc/index.dart';
import 'package:base_bloc_3/features/core/data/model/base_data.dart';
import 'package:base_bloc_3/features/core/domain/use_case/use_case.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../base/network/errors/error.dart';

part 'example_bloc.freezed.dart';
part 'example_bloc.g.dart';
part 'example_event.dart';
part 'example_state.dart';

@injectable
class ExampleBloc extends BaseBloc<ExampleEvent, ExampleState> {
  ExampleBloc(this._coreUseCase) : super(ExampleState.init()) {
    on<ExampleEvent>((ExampleEvent event, Emitter<ExampleState> emit) async {
      await event.when(
          getData: () => onGetData(emit),
          showMessage: () => onShowMessage(emit));
    });
  }

  final ExampleUseCase _coreUseCase;

  Future onGetData(Emitter<ExampleState> emit) async {
    emit(state.copyWith(attribute: none()));
    final Either<BaseError, BaseModel> result =
        await _coreUseCase.getData(lat: 21.0278, lon: 105.8342);
    emit(
      result.fold(
        (l) => state.copyWith(status: BaseStateStatus.failed, message: "Error"),
        (r) => state.copyWith(status: BaseStateStatus.failed, message: "Error"),
      ),
    );
  }

  Future onShowMessage(Emitter<ExampleState> emit) async {
    emit(state.copyWith(message: "Error"));
    print("log");
  }
}
