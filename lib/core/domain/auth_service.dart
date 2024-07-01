import 'package:dio/dio.dart';
import 'package:dio/src/dio.dart';
import 'package:dio/src/response.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:warehouse_managmenet/core/config/get_header.dart';
import 'package:warehouse_managmenet/core/config/get_it.dart';
import 'package:warehouse_managmenet/core/config/widget/get_it.dart';
import 'package:warehouse_managmenet/core/data/login_model.dart';
import 'package:warehouse_managmenet/core/domain/base_service.dart';
import 'package:warehouse_managmenet/core/resourse/app_url.dart';

abstract class AuthService extends BaseService {
  login(LoginModel user);
}

class AuthServiceImp extends AuthService {
  @override
  login(LoginModel user) async {
    print(user.toJson());
    try {
      response = await dio.post(
        '$URL${entity = EndPoint.Login}',
        options: getHeader(useToken: false),
        data: user.toJson(),
      );

      if (response!.statusCode == 200) {
        print("200");
        storage
            .get<SharedPreferences>()
            .setString('token', response!.data['data']);
        return response!.data["message"];
      } else {
        print("object");
      }
    } on DioException catch (e) {
      throw e.response!.data;
    } on Error catch (e) {
      throw e;
    }
  } 
}
