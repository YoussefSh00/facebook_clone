import 'package:facebook_clone/screens/friends_screen.dart';
import 'package:facebook_clone/screens/home_screen.dart';
import 'package:facebook_clone/screens/market_place_screen.dart';
import 'package:facebook_clone/screens/menu_screen.dart';
import 'package:facebook_clone/screens/notifications_screen.dart';
import 'package:facebook_clone/screens/videos_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.add_circle,
                  size: 30.sp,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Icon(
                  Icons.search,
                  size: 30.sp,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Image.asset(
                  "assets/images/Messenger.png",
                  width: 50.w,
                  height: 50.h,
                ),
                SizedBox(
                  width: 5.w,
                ),
              ],
            )
          ],
          title: Text(
            "facebook",
            style: TextStyle(
                fontSize: 30.sp,
                color: Colors.blue[800],
                fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.blue[800],
              labelColor: Colors.blue[800],
              tabs: [
                Icon(
                  Icons.home,
                  size: 25.sp,
                ),
                Icon(
                  Icons.tv,
                  size: 25.sp,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.userGroup,
                      size: 25.sp,
                    ),
                    Positioned(
                      top: -8,
                      right: -10,
                      child: Container(
                        alignment: Alignment.center,
                        width: 20.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "+99",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ],
                ),
                Icon(
                  Icons.store,
                  size: 25.sp,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Icon(
                      Icons.notifications,
                      size: 25.sp,
                    ),
                    Positioned(
                      top: -10,
                      right: -8,
                      child: Container(
                        alignment: Alignment.center,
                        width: 20.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "18",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ],
                ),
                Icon(
                  Icons.menu,
                  size: 25.sp,
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            const HomeScreen(),
            VideosScreen(),
            const FriendsScreen(),
            const MarketPlaceScreen(),
            const NotificationsScreen(),
            const MenuScreen(),
          ],
        ),
      ),
    );
  }
}
