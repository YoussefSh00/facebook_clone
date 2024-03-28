import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleWithPersonIcon extends StatelessWidget {
  const CircleWithPersonIcon({super.key, required this.color});
  final int color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 50.h,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: .5.w),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(
        Icons.person,
        color: Color(color),
        size: 35.sp,
      ),
    );
  }
}
