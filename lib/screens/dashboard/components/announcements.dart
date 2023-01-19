import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'item_announcements.dart';

class Announcements extends StatelessWidget {
  const Announcements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550.h,
      width: 1025.w,
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
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Row(
                children: [
                  Text(
                    'Announcements',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'All',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.sp,
                          color: Colors.lightBlueAccent),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 20.w, bottom: 20.h),
              child: Text(
                'keep updated',
                style: TextStyle(fontSize: 15.sp),
              ),
            ),
            SizedBox(
              height: 700.h,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const ItemAnnouncements();
                },
                itemCount: 70,
              ),
            )
          ],
        ),
      ),
    );
  }
}
