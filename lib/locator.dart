

import 'package:get_it/get_it.dart';
import 'package:valipour_test/features/feature_barbers/data/data_source/remote/api_provider.dart';
import 'package:valipour_test/features/feature_barbers/data/repository/barbers_repositoryImpl.dart';
import 'package:valipour_test/features/feature_barbers/domain/repository/barbers_repository.dart';
import 'package:valipour_test/features/feature_barbers/domain/use_cases/get_barbers_usecase.dart';
import 'package:valipour_test/features/feature_barbers/presentation/bloc/barbers_bloc.dart';

GetIt locator=GetIt.instance;

setUp(){
  locator.registerSingleton<ApiProvider>(ApiProvider());

  /// repositories
  locator.registerSingleton<BarbersRepository>(BarbersRepositoryImpl(locator()));

  /// use cases
  locator.registerSingleton<GetBarbersUseCase>(GetBarbersUseCase(locator()));

  locator.registerSingleton<BarbersBloc>(BarbersBloc(locator()));

}