import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemQuizzes extends StatelessWidget {
  const ItemQuizzes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.hourglass_bottom,
                      color: Colors.lightBlueAccent,
                      size: 30.sp,
                    )),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Unit 2 quiz',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Course:  ',
                          style: TextStyle(fontSize: 20.sp),
                        ),
                        Text(
                          'subject ',
                          style: TextStyle(fontSize: 20.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Topic:  ',
                          style: TextStyle(fontSize: 20.sp),
                        ),
                        Text(
                          'subject ',
                          style: TextStyle(fontSize: 20.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Duo to:  ',
                          style: TextStyle(fontSize: 20.sp),
                        ),
                        Text(
                          'subject ',
                          style: TextStyle(fontSize: 20.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(
                          Size(200.w, 0.h),
                        ),
                        backgroundColor: const MaterialStatePropertyAll(
                            Colors.lightBlueAccent),
                      ),
                      child: Text(
                        'Start Quiz',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
