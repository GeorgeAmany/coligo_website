import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemAnnouncements extends StatelessWidget {
  const ItemAnnouncements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundImage: const NetworkImage(
                'https://avatars.mds.yandex.net/get-images-cbir/1381746/2k8lMl9_qfSKlLISRnImTg6870/ocr'),
          ),
          SizedBox(
            width: 10.w,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Text(
                  'Mr. Ahmed Mostafa ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  'math 101 ',
                  style: TextStyle(fontSize: 15.sp),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          VerticalDivider(
            color: Colors.black,
            thickness: 20.sp,
            indent: 2,
            endIndent: 10,
          ),
          SizedBox(
            width: 25.w,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 60.h,
                  width: 550.w,
                  child: Text(
                    'hi my heros! i just want you ready to our exams and focus on remaining assesments to gain more grades goodluck my warriors ',
                    style: TextStyle(fontSize: 20.sp),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
