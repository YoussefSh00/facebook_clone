import 'package:facebook_clone/core/all_const.dart';
import 'package:facebook_clone/widgets/between_see_more_and_log_out.dart';
import 'package:facebook_clone/widgets/circle_with_person_icon.dart';
import 'package:facebook_clone/widgets/menu_items_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.sp),
      child: ListView(
        children: [
          Row(
            children: [
              Text(
                "Menu",
                style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5.w,
              ),
              const Spacer(),
              Icon(
                Icons.settings,
                size: 35.sp,
              ),
              SizedBox(
                width: 20.w,
              ),
              Icon(
                Icons.search,
                size: 35.sp,
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Card(
            color: Colors.white,
            elevation: 5,
            child: Container(
              margin: EdgeInsets.all(10.sp),
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleWithPersonIcon(color: 0xFF1565C0),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Youssef Sherif",
                        style: TextStyle(
                            fontSize: 22.sp, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Container(
                        width: 50.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: const Icon(Icons.arrow_downward_outlined),
                      )
                    ],
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: .1,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.add_circle_outlined,
                        color: Colors.grey[600],
                        size: 50.sp,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Create new profile or page",
                        style:
                            TextStyle(fontSize: 20.sp, color: Colors.grey[600]),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Your shortcuts",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 50.h,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    CircleWithPersonIcon(color: AllConst.colors[index]),
                    SizedBox(
                      width: 10.w,
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 8,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 100),
              itemBuilder: (context, index) {
                return MenusItemForm(
                    icon: AllConst.myIcons[index],
                    itemName: AllConst.iconsNames[index]);
              },
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            alignment: Alignment.center,
            height: 50.h,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 221, 221),
                borderRadius: BorderRadius.circular(8.sp)),
            child: Text(
              "See more",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  const Divider(
                    color: Colors.black,
                    thickness: .2,
                  ),
                  BetweenSeeMoreAndLogout(
                      icon: AllConst.myIconsForMenu[index],
                      name: AllConst.iconsNamesForMenu[index])
                ],
              );
            },
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            alignment: Alignment.center,
            height: 50.h,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 222, 221, 221),
                borderRadius: BorderRadius.circular(8.sp)),
            child: Text(
              "Log out",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
