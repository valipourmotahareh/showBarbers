import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:valipour_test/core/resources/data_state.dart';
import 'package:valipour_test/features/feature_barbers/domain/use_cases/get_barbers_usecase.dart';
import 'package:valipour_test/features/feature_barbers/presentation/bloc/barbers_status.dart';

part 'barbers_event.dart';

part 'barbers_state.dart';

class BarbersBloc extends Bloc<BarbersEvent, BarbersState> {
  final GetBarbersUseCase getBarbersUseCase;

  BarbersBloc(this.getBarbersUseCase)
      : super(BarbersState(barbersStatus: BarbersLoading())) {
    on<BarbersEvent>((event, emit) async {
      emit(state.copyWith(newBarbersStatus: BarbersLoading()));
      DataState dataState = await getBarbersUseCase();
      if (dataState is DataSuccess) {
        emit(
            state.copyWith(newBarbersStatus: BarbersCompleted(dataState.data)));
      }

      if (dataState is DataFailed) {
        emit(state.copyWith(newBarbersStatus: BarbersError(dataState.error!)));
      }
    });
  }
}
