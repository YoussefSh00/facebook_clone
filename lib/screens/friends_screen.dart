import 'package:facebook_clone/core/all_const.dart';
import 'package:facebook_clone/widgets/friend_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.sp),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Friend requests",
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                AllConst.names.length.toString(),
                style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              const Spacer(),
              Text(
                "See all",
                style: TextStyle(color: Colors.blue[800], fontSize: 18.sp),
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: AllConst.names.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    FriendForm(
                      name: AllConst.names[index],
                      num: AllConst.comments[index],
                      color: AllConst.colors[index],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 70.w,
                        ),
                        Expanded(
                            child: Container(
                          alignment: Alignment.center,
                          height: 45.h,
                          decoration: BoxDecoration(
                              color: Colors.blue[800],
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Confirm",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp),
                          ),
                        )),
                        SizedBox(
                          width: 15.w,
                        ),
                        Expanded(
                            child: Container(
                          alignment: Alignment.center,
                          height: 45.h,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 222, 220, 220),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Delete",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp),
                          ),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
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
