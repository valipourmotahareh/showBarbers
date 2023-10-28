import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valipour_test/core/widgets/dot_loading_widget.dart';
import 'package:valipour_test/core/widgets/top_home_page.dart';
import 'package:valipour_test/features/feature_barbers/domain/entities/barbers_entity.dart';
import 'package:valipour_test/features/feature_barbers/presentation/bloc/barbers_bloc.dart';
import 'package:valipour_test/features/feature_barbers/presentation/bloc/barbers_status.dart';
import 'package:valipour_test/features/feature_barbers/presentation/widgets/barbers_item.dart';

class ListBarbersScreen extends StatefulWidget {
  const ListBarbersScreen({super.key});

  @override
  State<ListBarbersScreen> createState() => _ListBarbersScreenState();
}

class _ListBarbersScreenState extends State<ListBarbersScreen> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<BarbersBloc>(context).add(LoadBarbers());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BarbersBloc,BarbersState>(
      builder:(context,state){
        if(state.barbersStatus is BarbersLoading){
          return const Expanded(child: DotLoadingWidget());
        }

        if(state.barbersStatus is BarbersCompleted){
          ///cast
          final BarbersCompleted barbersCompleted=state.barbersStatus as BarbersCompleted;
          final BarbersEntity barbersEntity=barbersCompleted.barbersEntity;
          return Expanded(
            child: ListView.builder(
              itemCount: barbersEntity.results!.length,
              itemBuilder: (c,i){
                return BarbersItem(results: barbersEntity.results![i]);

              },
            ),
          );

        }

        if(state.barbersStatus is BarbersError){
          return const Center(child: Text("Error"),);
        }
        return Container();
      },
    );

  }


}
