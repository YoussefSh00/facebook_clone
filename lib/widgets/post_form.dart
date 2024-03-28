import 'package:facebook_clone/widgets/circle_with_person_icon.dart';
import 'package:facebook_clone/widgets/row_of_love_and_comment_and_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostForm extends StatelessWidget {
  const PostForm(
      {super.key,
      required this.name,
      required this.content,
      required this.likes,
      required this.comments,
      required this.hours,
      required this.color});
  final String name;
  final String content;
  final int likes;
  final int hours;
  final int comments;
  final int color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      height: 350.h,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              CircleWithPersonIcon(
                color: color,
              ),
              SizedBox(
                width: 5.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Text(
                        "${hours}h",
                        style: const TextStyle(
                          color: Color.fromARGB(255, 117, 116, 116),
                        ),
                      ),
                      const Text(
                        ".",
                        style: TextStyle(
                          color: Color.fromARGB(255, 117, 116, 116),
                        ),
                      ),
                      Icon(
                        Icons.watch_later_outlined,
                        size: 15.sp,
                        color: const Color.fromARGB(255, 117, 116, 116),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  content,
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Image.asset(
                "assets/images/love.png",
                width: 40.w,
                height: 40.h,
              ),
              Text(
                likes.toString(),
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromARGB(255, 117, 116, 116),
                ),
              ),
              const Spacer(),
              Text(
                comments.toString(),
                style: const TextStyle(
                  color: Color.fromARGB(255, 117, 116, 116),
                ),
              ),
              const Text(
                " comments",
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 116, 116),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.h),
            width: double.infinity,
            height: 1.h,
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30.w),
            child: const RowOfLoveAndCommentAndShare(),
          )
        ],
      ),
    );
  }
}
