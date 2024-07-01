import 'package:dio/dio.dart';
import 'package:warehouse_managmenet/core/resourse/app_url.dart';

abstract class BaseService{
  Dio dio =Dio();
  Response? response;
  String URL=AppUrl.baseUrl;
  String? entity;
}