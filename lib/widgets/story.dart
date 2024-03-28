import 'package:facebook_clone/widgets/circle_with_person_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Story extends StatelessWidget {
  const Story({super.key, required this.color, required this.pic});
  final int color;
  final String pic;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200.h,
          margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
          width: 110.w,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2.w),
            borderRadius: BorderRadius.circular(20.sp),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.sp),
            child: Image.asset(
              pic,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 15,
          child: CircleWithPersonIcon(color: color),
          
        )
      ],
    );
  }
}
