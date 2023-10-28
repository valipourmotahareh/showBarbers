import 'package:valipour_test/core/resources/data_state.dart';
import 'package:valipour_test/features/feature_barbers/domain/entities/barbers_entity.dart';

abstract class BarbersRepository {
  Future<DataState<BarbersEntity>> fetchBarbers();
}
