import 'package:coligo_website/screens/login/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../drawer/view.dart';
import 'cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Builder(
        builder: (context) {
          final cubit = LoginCubit.getObject(context);

          return Scaffold(
            body: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'welcom to coligo \n please login '.toUpperCase(),
                        style:
                            TextStyle(fontSize: 50.sp, color: Colors.lightBlue),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 38.h),
                      SizedBox(
                        height: 100.h,
                        width: 500.w,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.r),
                              ),
                            ),
                            label: const Text("Enter email"),
                          ),
                          controller: cubit.emailController,
                          onChanged: (value) => cubit.login(),
                        ),
                      ),
                      SizedBox(height: 38.h),
                      BlocBuilder<LoginCubit, LoginStates>(
                        builder: (context, state) {
                          return SizedBox(
                            height: 100.h,
                            width: 500.w,
                            child: TextFormField(
                              obscureText: cubit.isHidden,
                              controller: cubit.passwordController,
                              onChanged: (value) => cubit.login(),
                              decoration: InputDecoration(
                                label: const Text("Enter password"),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20.r),
                                  ),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    cubit.password();
                                    cubit.login();
                                  },
                                  icon: Icon(
                                    cubit.isHidden
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 38.h),
                      BlocBuilder<LoginCubit, LoginStates>(
                        builder: (context, state) {
                          if (state is LoginLoadingState) {
                            return const Center(
                                child: CircularProgressIndicator());
                          }
                          return Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 63.w, end: 63.w),
                            child: ElevatedButton(
                              onPressed: () {
                                if (state is LoginSuccessState) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const DrawerMenu(),
                                    ),
                                  );
                                }
                                if (state is LoginFailedState) {
                                  Widget okButton = TextButton(
                                    child: const Text("OK"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  );
                                  AlertDialog alert = AlertDialog(
                                    title: const Text("Wrong data"),
                                    content: const Text(
                                        "Please Check Email & Pass "),
                                    actions: [
                                      okButton,
                                    ],
                                  );
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return alert;
                                    },
                                  );
                                }
                              },
                              style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(
                                  Size(270.w, 60.h),
                                ),
                                backgroundColor: const MaterialStatePropertyAll(
                                  Colors.lightBlueAccent,
                                ),
                              ),
                              child: Text(
                                'Login',
                                style: TextStyle(fontSize: 20.sp),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 120.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
