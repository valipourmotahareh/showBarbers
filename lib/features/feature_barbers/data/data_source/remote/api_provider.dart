import 'package:dio/dio.dart';
import 'package:valipour_test/core/utilis/constants.dart';

class ApiProvider{
final Dio _dio=Dio();

/// get barbers api call
Future<dynamic> getBarbers() async{
  var response=await _dio.get('${Constants.baseUrl}aapi/barbers/home/');
  return response;
}
}