import 'package:coligo_website/screens/login/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../dashboard/view.dart';
import 'components/drawer_list_tile.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Container(
                height: 1080.h,
                width: 320.w,
                color: Colors.lightBlueAccent,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 25.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Coligo',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        DrawerListTile(
                          title: 'Dashboard',
                          icon: Icons.home_filled,
                          tap: () {},
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        DrawerListTile(
                          title: 'Schedule',
                          icon: Icons.calendar_month_outlined,
                          tap: () {},
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        DrawerListTile(
                          title: 'Courses',
                          icon: Icons.sticky_note_2,
                          tap: () {},
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        DrawerListTile(
                          title: 'Dashboard',
                          icon: Icons.school_outlined,
                          tap: () {},
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        DrawerListTile(
                          title: 'Performance',
                          icon: Icons.trending_up,
                          tap: () {},
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        DrawerListTile(
                          title: 'Announcement',
                          icon: Icons.campaign,
                          tap: () {},
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        DrawerListTile(
                          title: 'Logout',
                          icon: Icons.logout,
                          tap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                const LoginScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const DashboardScreen(),
            ],
          ),
        ],
      ),
    );
  }
}
