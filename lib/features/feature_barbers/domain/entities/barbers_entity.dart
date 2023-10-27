import 'package:equatable/equatable.dart';
import 'package:valipour_test/features/feature_barbers/data/models/barbers_list_model.dart';

class BarbersEntity extends Equatable{
  final num? count;
  final dynamic next;
  final dynamic previous;
  final List<Results>? results;

  const BarbersEntity({this.count, this.next, this.previous, this.results});

  @override
  // TODO: implement props
  List<Object?> get props => [
    count,
    next,
    previous,
    results,
  ];

}