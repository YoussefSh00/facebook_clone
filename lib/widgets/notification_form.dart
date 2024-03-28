import 'package:facebook_clone/widgets/circle_with_person_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationForm extends StatelessWidget {
  const NotificationForm(
      {super.key, required this.name, required this.num, required this.color});
  final String name;
  final int num;
  final int color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleWithPersonIcon(color: color),
          Positioned(
            bottom: -20,
            right: -18,
            child: Image.asset(
              "assets/images/love.png",
              width: 50.w,
              height: 50.h,
            ),
          )
        ],
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 5.w,
          ),
          const Text("reacted to your post"),
        ],
      ),
      subtitle: Text("$num hours ago"),
    );
  }
}
