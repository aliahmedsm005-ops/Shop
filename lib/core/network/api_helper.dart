import 'package:dio/dio.dart';
import 'package:shop/core/network/end_points.dart';

class APIHelper {
  //singleton
  static final APIHelper _apiHelper = APIHelper._internal();
factory APIHelper()
{
  return _apiHelper;
}
APIHelper._internal();

//Declaring Dio as
Dio dio = Dio(
  BaseOptions(
    // baseUrl: EndPoints.
  )
);
}
