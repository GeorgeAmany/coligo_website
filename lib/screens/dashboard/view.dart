import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/announcements.dart';
import 'components/appbar.dart';
import 'components/exams_time.dart';
import 'components/quizzes.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const Appbar(),
          SizedBox(
            height: 35.h,
          ),
          const ExamsTime(),
          SizedBox(
            height: 35.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Announcements(),
              SizedBox(
                width: 35.w,
              ),
              const Quizzes(),
            ],
          ),
          SizedBox(
            height: 35.h,
          ),
        ],
      ),
    );
  }
}
