import 'package:facebook_clone/widgets/circle_with_person_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FriendForm extends StatelessWidget {
  const FriendForm(
      {super.key, required this.name, required this.num, required this.color});
  final String name;
  final int num;
  final int color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleWithPersonIcon(color: color),
      title: Text(
        name,
        style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.bold),
      ),
      subtitle: Text("$num mutual friends"),
    );
  }
}
