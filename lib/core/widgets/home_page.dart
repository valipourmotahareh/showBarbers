import 'dart:ffi';

import 'package:flutter/material.dart';
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
    return  const Scaffold(
      backgroundColor: Color(0xFF1F2A40),
      body: ListBarbersScreen(),
    );
  }
}
