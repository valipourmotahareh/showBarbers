import 'package:flutter/cupertino.dart';
import 'package:valipour_test/features/feature_barbers/domain/entities/barbers_entity.dart';

@immutable
abstract class BarbersStatus{
}
class BarbersLoading extends BarbersStatus{

}
class BarbersCompleted extends BarbersStatus{
    final BarbersEntity barbersEntity;
    BarbersCompleted(this.barbersEntity);
}

class BarbersError extends BarbersStatus{
  final String errorMessage;
  BarbersError(this.errorMessage);
}