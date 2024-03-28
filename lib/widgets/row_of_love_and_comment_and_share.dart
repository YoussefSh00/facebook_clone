import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowOfLoveAndCommentAndShare extends StatelessWidget {
  const RowOfLoveAndCommentAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const FaIcon(FontAwesomeIcons.heart),
        SizedBox(
          width: 5.w,
        ),
        const Text("Like"),
        const Spacer(),
        const FaIcon(FontAwesomeIcons.comment),
        SizedBox(
          width: 5.w,
        ),
        const Text("Comment"),
        const Spacer(),
        const FaIcon(FontAwesomeIcons.share),
        SizedBox(
          width: 5.w,
        ),
        const Text("Share"),
      ],
    );
  }
}
