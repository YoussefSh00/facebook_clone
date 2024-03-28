import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDvider extends StatelessWidget {
  const MyDvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 10.h,
      color: const Color.fromARGB(255, 194, 193, 193),
    );
  }
}
