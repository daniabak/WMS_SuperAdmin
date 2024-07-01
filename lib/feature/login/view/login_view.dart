import 'package:flutter/material.dart';
import 'package:warehouse_managmenet/core/config/widget/my_button.dart';
import 'package:warehouse_managmenet/core/config/widget/my_check_box_with_title.dart';
import 'package:warehouse_managmenet/core/config/widget/my_text_field.dart';
import 'package:warehouse_managmenet/core/data/login_model.dart';
import 'package:warehouse_managmenet/core/resourse/app_color.dart';
import 'package:warehouse_managmenet/core/resourse/app_string.dart';
import 'package:warehouse_managmenet/feature/login/bloc/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

bool isChecked = false;

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Row(
            children: [
              Image.asset('assets/images/Hue_Saturation 1.jpg'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 0,
                      ),
                      Center(
                        child: Text(
                          AppString.SuperAdmin,
                          style: TextStyle(
                              color: AppColor.purple3,
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Text(
                        AppString.Login,
                        style: TextStyle(
                            color: AppColor.purple3,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        AppString.Email,
                        style: TextStyle(
                            color: AppColor.purple3,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          width: 376,
                          height: 64,
                          child: myTextFieldName(
                              nameText: '',
                              nameController: email,
                              readOnly: false)),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        AppString.password,
                        style: TextStyle(
                            color: AppColor.purple3,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          width: 376,
                          height: 64,
                          child: myTextFieldName(
                              nameText: '',
                              nameController: password,
                              readOnly: false)),
                      MyCheckBoxWithTitle(
                        Text: AppString.ForgetPassword,
                        isChecked: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      BlocListener<LoginBloc, LoginState>(
                        listener: (context, state) {
                          if (state is successlogin) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(new SnackBar(
                              content: Text(state.message),
                              backgroundColor: AppColor.green,
                            ));
                          } else if (state is NoConnection) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(new SnackBar(
                              content: Text(state.message),
                              backgroundColor: AppColor.red,
                            ));
                          }
                        },
                        child: MyButton(
                          title: AppString.Login,
                          onpress: () {
                            if (email.text.isNotEmpty &&
                                password.text.isNotEmpty) {
                              LoginModel user = LoginModel(
                                  email: email.text, password: password.text);
                              context
                                  .read<LoginBloc>()
                                  .add(loginUser(User: user));
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(new SnackBar(
                                content: Text('إملاء كامل الحقول'),
                                backgroundColor: AppColor.red,
                              ));
                            }
                          },
                          colors: AppColor.purple3,
                          width: 376,
                          height: 50,
                          radius: 20,
                          fontsize: 19,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
