import 'package:facebook_clone/widgets/circle_with_person_icon.dart';
import 'package:facebook_clone/widgets/row_of_love_and_comment_and_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideosScreen extends StatefulWidget {
  const VideosScreen({super.key});

  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  late YoutubePlayerController _controller;
  late YoutubePlayerController _controller2;
  late YoutubePlayerController _controller3;
  late YoutubePlayerController _controller4;
  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=VKwZle8OOfY&list=PLwWuxCLlF_ucnfkI-_yNRCOTI-yJa5N-a&index=13");
    final videoId2 = YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=kbqLM-KlPdM&list=PLwWuxCLlF_ucnfkI-_yNRCOTI-yJa5N-a&index=14");
    final videoId3 = YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=GCU77vutRGE&list=PLwWuxCLlF_ucnfkI-_yNRCOTI-yJa5N-a&index=15");
    final videoId4 = YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=vxjyOdNZxkw&list=PLwWuxCLlF_ucnfkI-_yNRCOTI-yJa5N-a&index=16");

    _controller = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
    _controller2 = YoutubePlayerController(
        initialVideoId: videoId2!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
    _controller3 = YoutubePlayerController(
        initialVideoId: videoId3!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
    _controller4 = YoutubePlayerController(
        initialVideoId: videoId4!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.sp),
      child: ListView(
        children: [
          Row(
            children: [
              Text(
                "Videos",
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Icon(Icons.person, size: 35.sp),
              SizedBox(
                width: 10.w,
              ),
              Icon(Icons.search, size: 35.sp),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Column(
            children: [
              Row(
                children: [
                  const CircleWithPersonIcon(color: 0xFF90A4AE),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Omar Ahmed",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "2 months ago",
                        style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Flutter Advanced Complete Course - #13 Flutter Flavors (Android)",
                style: TextStyle(fontSize: 18.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              YoutubePlayer(
                  controller: _controller, showVideoProgressIndicator: true),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/love.png",
                    width: 40.w,
                    height: 40.h,
                  ),
                  Text(
                    "1.7M",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 117, 116, 116),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "963",
                    style: TextStyle(
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
          SizedBox(
            height: 10.h,
          ),
          Column(
            children: [
              Row(
                children: [
                  const CircleWithPersonIcon(color: 0xFF90A4AE),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Omar Ahmed",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "3 weeks ago",
                        style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Flutter Advanced Complete Course - #14 Flutter Flavors ( iOS )",
                style: TextStyle(fontSize: 18.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              YoutubePlayer(
                  controller: _controller2, showVideoProgressIndicator: true),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/love.png",
                    width: 40.w,
                    height: 40.h,
                  ),
                  Text(
                    "2.8M",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 117, 116, 116),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "1.2K",
                    style: TextStyle(
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
          SizedBox(
            height: 10.h,
          ),
          Column(
            children: [
              Row(
                children: [
                  const CircleWithPersonIcon(color: 0xFF90A4AE),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Omar Ahmed",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "2 weeks ago",
                        style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Flutter Advanced Complete Course - #15 CI/CD Firebase App Distribution",
                style: TextStyle(fontSize: 18.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              YoutubePlayer(
                  controller: _controller3, showVideoProgressIndicator: true),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/love.png",
                    width: 40.w,
                    height: 40.h,
                  ),
                  Text(
                    "2.4M",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 117, 116, 116),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "1.8K",
                    style: TextStyle(
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
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            height: 10.h,
          ),
          Column(
            children: [
              Row(
                children: [
                  const CircleWithPersonIcon(color: 0xFF90A4AE),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Omar Ahmed",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "2 weeks ago",
                        style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Flutter Advanced Complete Course - #16 CI/CD FastLane",
                style: TextStyle(fontSize: 18.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              YoutubePlayer(
                  controller: _controller4, showVideoProgressIndicator: true),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/love.png",
                    width: 40.w,
                    height: 40.h,
                  ),
                  Text(
                    "3.1M",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 117, 116, 116),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "2.4K",
                    style: TextStyle(
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
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
