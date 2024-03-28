import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BetweenSeeMoreAndLogout extends StatelessWidget {
  const BetweenSeeMoreAndLogout(
      {super.key, required this.icon, required this.name});
  final IconData icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30.sp,
      ),
      title: Text(
        name,
        style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(Icons.arrow_downward_sharp),
    );
  }
}
