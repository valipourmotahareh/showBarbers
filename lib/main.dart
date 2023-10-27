import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valipour_test/core/widgets/home_page.dart';
import 'package:valipour_test/core/widgets/main_page.dart';
import 'package:valipour_test/features/feature_barbers/presentation/bloc/barbers_bloc.dart';
import 'package:valipour_test/features/feature_barbers/presentation/screens/list_barbers_screen.dart';
import 'package:valipour_test/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///  init locator
  setUp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MultiBlocProvider(
        providers: [
          BlocProvider<BarbersBloc>(
            create: (_) => locator<BarbersBloc>(),
          ),
        ],
        child: const MainPage()
    ),
  ));
}