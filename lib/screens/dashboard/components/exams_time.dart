import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExamsTime extends StatelessWidget {
  const ExamsTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310.h,
      width: 1510.w,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 7,
              color: Colors.grey.withOpacity(.3),
              offset: const Offset(0, 3),
              blurStyle: BlurStyle.outer),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 300.w),
            child: Image.network(
              'https://avatars.mds.yandex.net/i?id=5c7d77aae88d2c5766d4d79617eb8a6e36fed7e3-7756406-images-thumbs&n=13',
              fit: BoxFit.fill,
              width: 1200.w,
              height: 550.h,
            ),
          ),
          Container(
            height: 310.h,
            width: 730.w,
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'exams time'.toUpperCase(),
                      style: TextStyle(
                          fontSize: 70.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlueAccent),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Here we are, Are you ready to fight ? Don't worry ,we prepared some tips to be ready for your exames",
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlueAccent),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      '"Nothing happens until something moves " _ Albert Einstein',
                      style: TextStyle(fontSize: 20.sp, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(
                          Size(300.w, 50.h),
                        ),
                        backgroundColor: const MaterialStatePropertyAll(
                            Colors.lightBlueAccent),
                      ),
                      child: Text(
                        'View exames tips',
                        style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
