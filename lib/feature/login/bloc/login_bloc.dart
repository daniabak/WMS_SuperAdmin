import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:warehouse_managmenet/core/data/login_model.dart';
import 'package:warehouse_managmenet/core/domain/auth_service.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
   on<loginUser>((event, emit) async{
        emit(loading());
         try{

      dynamic temp = await AuthServiceImp().login(event.User);
      if(temp.isNotEmpty){
        emit(successlogin(message: temp));
      }
     
        }catch(e){
          emit(NoConnection(message: e.toString()));
        }
      
    });
  }
}
