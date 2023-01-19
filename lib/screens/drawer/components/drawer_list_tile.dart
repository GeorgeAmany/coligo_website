import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerListTile extends StatelessWidget {
  final String title ;
  final IconData icon ;
  final VoidCallback tap ;
  const DrawerListTile({Key? key, required this.title, required this.icon, required this.tap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.sp,
        ),
      ),
      leading: Icon(icon, color: Colors.white),
      onTap: tap,
    );
  }
}
