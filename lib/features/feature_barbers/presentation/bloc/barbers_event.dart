part of 'barbers_bloc.dart';

@immutable
abstract class BarbersEvent {}

class LoadBarbers extends BarbersEvent {
  LoadBarbers();
}
