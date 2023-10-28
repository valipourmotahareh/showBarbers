import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:valipour_test/core/widgets/filter_bar.dart';
import 'package:valipour_test/core/widgets/line_service.dart';
import 'package:valipour_test/core/widgets/slider_menu.dart';
import 'package:valipour_test/core/widgets/top_home_page.dart';
import 'package:valipour_test/features/feature_barbers/presentation/screens/list_barbers_screen.dart';
import 'package:valipour_test/features/feature_barbers/presentation/widgets/barbers_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              TopHomePage(),
              LineService(),
              SliderMenu(),
              FilterBar(),
              ListBarbersScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
