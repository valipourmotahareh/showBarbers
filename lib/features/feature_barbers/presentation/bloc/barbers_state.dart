part of 'barbers_bloc.dart';

class BarbersState {
  BarbersStatus barbersStatus;

  BarbersState({required this.barbersStatus});

  BarbersState copyWith({
    BarbersStatus? newBarbersStatus
      }){
       return BarbersState(barbersStatus: newBarbersStatus ?? barbersStatus);
     }
}

