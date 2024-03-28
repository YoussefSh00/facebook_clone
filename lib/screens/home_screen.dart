import 'package:facebook_clone/core/all_const.dart';
import 'package:facebook_clone/models/posts_model.dart';
import 'package:facebook_clone/services/posts_service.dart';
import 'package:facebook_clone/widgets/circle_with_person_icon.dart';
import 'package:facebook_clone/widgets/my_dvider.dart';
import 'package:facebook_clone/widgets/post_form.dart';
import 'package:facebook_clone/widgets/story.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PostsModel> allPosts = [];

  Future<List<PostsModel>> fillList() async {
    allPosts = await PostsService().getAllPosts();
    setState(() {});
    return allPosts;
  }

  @override
  void initState() {
    fillList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
          child: Row(
            children: [
              const CircleWithPersonIcon(
                color: 0xFF1565C0,
              ),
              SizedBox(
                height: 40.h,
                width: 10.w,
              ),
              SizedBox(
                height: 40.h,
                width: 270.w,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "What's on your mind?",
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                margin: EdgeInsets.only(right: 10.w),
                child: Icon(
                  Icons.photo_library_outlined,
                  color: const Color.fromARGB(255, 58, 206, 66),
                  size: 30.sp,
                ),
              )
            ],
          ),
        ),
        const MyDvider(),
        SizedBox(
          height: 200.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Story(
                pic: AllConst.pics[index],
                color: AllConst.colors[index],
              );
            },
          ),
        ),
        const MyDvider(),
        ...List.generate(
          allPosts.length,
          (index) => Column(
            children: [
              PostForm(
                color: AllConst.colors[index],
                hours: AllConst.hours[index],
                name: AllConst.names[index],
                content: allPosts[index].body,
                comments: AllConst.comments[index],
                likes: AllConst.likes[index],
              ),
              const MyDvider()
            ],
          ),
        ),
      ],
    );
  }
}
