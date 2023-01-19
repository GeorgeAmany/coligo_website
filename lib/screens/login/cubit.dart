import 'package:coligo_website/screens/login/states.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'model.dart';


class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isHidden = true;

  static LoginCubit getObject(context) => BlocProvider.of(context);

  Future<void> login() async {
    String email = emailController.text;
    String password = passwordController.text;
    try {
      emit(LoginLoadingState());
      // Make API call
      final response = await Dio().get('https://george-22084-default-rtdb.firebaseio.com/users.json');
      final model = User.fromJson(response.data);
      // Compare user input with API response
      if (model.email == email && model.password == password) {
        emit(LoginSuccessState());

      } else {
        emit(LoginFailedState());

      }
    } catch (e) {
      emit(LoginFailedState());
    }

  }

  password(){
    isHidden = !isHidden;
    emit(PassState());
  }
}
