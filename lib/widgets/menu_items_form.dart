import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenusItemForm extends StatelessWidget {
  const MenusItemForm({super.key, required this.icon, required this.itemName});
  final IconData icon;
  final String itemName;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.all(10.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 35.sp,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              itemName,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
