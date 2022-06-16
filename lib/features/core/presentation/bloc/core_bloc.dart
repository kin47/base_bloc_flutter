import 'package:base_bloc_3/features/core/data/model/base_data.dart';
import 'package:base_bloc_3/features/core/domain/use_case/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../base/network/errors/error.dart';

part 'core_bloc.freezed.dart';
part 'core_event.dart';
part 'core_state.dart';

@injectable
class CoreBloc extends Bloc<CoreEvent, CoreState> {
  CoreBloc(this._coreUseCase) : super(CoreState.initial()) {
    on<CoreEvent>((CoreEvent event, Emitter<CoreState> emit) async {
      await event.when(getData: () => onGetData(emit));
    });
  }

  final CoreUseCase _coreUseCase;

  Future onGetData(Emitter<CoreState> emit) async {
    emit(state.copyWith(isLoading: true, attribute: none()));
    final Either<BaseError, BaseModel> result =
        await _coreUseCase.getData('abcde');
    emit(
      result.fold(
        (l) => state.copyWith(isLoading: false, attribute: none()),
        (r) => state.copyWith(
          isLoading: true,
          attribute: optionOf(r.attribute),
        ),
      ),
    );
  }
}
