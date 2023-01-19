import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 1600.w,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 7,
              color: Colors.grey.withOpacity(.3),
              offset: const Offset(0, 3),
              blurStyle: BlurStyle.outer)
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 50.w,
          ),
          Text(
            'Welcome George, ',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.sp),
          ),
          const Spacer(),
          Expanded(
            child: SizedBox(
              height: 50.h,
              child: TextFormField(
                onTap: () {},
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.r),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  label: Text("Search", style: TextStyle(fontSize: 20.sp)),
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search_outlined,
                      color: Colors.grey,
                      size: 20.sp,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_active,
              size: 40.sp,
              color: Colors.lightBlueAccent,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mail_rounded,
              size: 40.sp,
              color: Colors.lightBlueAccent,
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          CircleAvatar(
            radius: 30.r,
            backgroundImage: const NetworkImage(
                'https://avatars.githubusercontent.com/u/106698653?s=400&u=be6e0113b22a8613bd7b75ee2f4d199b0904f183&v=4'),
          ),
          SizedBox(
            width: 50.w,
          ),
        ],
      ),
    );
  }
}
