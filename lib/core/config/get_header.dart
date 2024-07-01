import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:warehouse_managmenet/core/config/get_it.dart';
import 'package:warehouse_managmenet/core/config/widget/get_it.dart';

getHeader({bool useToken = true}) {
  if (useToken) {
    return Options(headers: {
      "Content-Type":"application/json",
     "X-Requested-With":"XMLHttpRequest",
      "authorization":
          storage.get<SharedPreferences>().getString('token'),
      
    });
  }else {
      return Options(headers: {
     "Content-Type":"application/json",
     "X-Requested-With":"XMLHttpRequest",
    });
   }
}