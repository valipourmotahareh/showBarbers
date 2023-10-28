import 'package:valipour_test/core/resources/data_state.dart';
import 'package:valipour_test/core/usecase/use_case.dart';
import 'package:valipour_test/features/feature_barbers/domain/entities/barbers_entity.dart';
import 'package:valipour_test/features/feature_barbers/domain/repository/barbers_repository.dart';

class GetBarbersUseCase extends UseCase<DataState<BarbersEntity>> {
  final BarbersRepository barbersRepository;

  GetBarbersUseCase(this.barbersRepository);

  @override
  Future<DataState<BarbersEntity>> call() {
    return barbersRepository.fetchBarbers();
  }
}
