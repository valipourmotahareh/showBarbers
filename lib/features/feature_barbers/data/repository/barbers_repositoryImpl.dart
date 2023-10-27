import 'package:dio/dio.dart';
import 'package:valipour_test/core/resources/data_state.dart';
import 'package:valipour_test/features/feature_barbers/data/data_source/remote/api_provider.dart';
import 'package:valipour_test/features/feature_barbers/data/models/barbers_list_model.dart';
import 'package:valipour_test/features/feature_barbers/domain/entities/barbers_entity.dart';
import 'package:valipour_test/features/feature_barbers/domain/repository/barbers_repository.dart';

class BarbersRepositoryImpl extends BarbersRepository{
  ApiProvider apiProvider;
  BarbersRepositoryImpl(this.apiProvider);

  @override
  Future<DataState<BarbersEntity>> fetchBarbers() async {
    try {
      Response response = await apiProvider.getBarbers();
      if (response.statusCode == 200) {
        BarbersEntity barbersEntity = BarbersListModel.fromJson(response.data);
        return DataSuccess(barbersEntity);
      } else {
        return const DataFailed("Something went Wrong, try again...");
      }
    } catch (ex) {
      return const DataFailed("Connection Failed...");
    }
  }
}