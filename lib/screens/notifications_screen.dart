import 'package:facebook_clone/core/all_const.dart';
import 'package:facebook_clone/widgets/notification_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.sp),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Notifications",
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5.w,
              ),
              const Spacer(),
              Icon(
                Icons.search,
                size: 35.sp,
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Text(
                "New",
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: AllConst.names.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    NotificationForm(
                      name: AllConst.names[index],
                      num: AllConst.hours[index],
                      color: AllConst.colors[index],
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: .1,
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
