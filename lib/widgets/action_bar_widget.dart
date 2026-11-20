import 'package:cordovez_mobprog/constants.dart';
import 'package:cordovez_mobprog/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActionBarWidget extends StatelessWidget {
  final int? numOfLikes;
  final VoidCallback onLike;
  final VoidCallback onComment;
  final VoidCallback onShare;

  const ActionBarWidget({
    super.key,
    this.numOfLikes,
    required this.onLike,
    required this.onComment,
    required this.onShare,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Like Widget - only number, no reaction icons
        GestureDetector(
          onTap: onLike,
          child: Row(
            children: [
              const Icon(Icons.thumb_up, color: fbPrimary, size: 20),
              SizedBox(width: 4),
              CustomText(
                text: numOfLikes.toString(),
                fontSize: ScreenUtil().setSp(12),
                color: fbDarkPrimary,
              ),
            ],
          ),
        ),
        // Comment Widget
        GestureDetector(
          onTap: onComment,
          child: CustomText(
            text: 'Comment',
            fontSize: ScreenUtil().setSp(12),
            color: fbDarkPrimary,
          ),
        ),
        // Share Widget
        GestureDetector(
          onTap: onShare,
          child: Row(
            children: [
              const Icon(Icons.redo, color: fbDarkPrimary, size: 20),
              SizedBox(width: 4),
              CustomText(
                text: 'Share',
                fontSize: ScreenUtil().setSp(12),
                color: fbDarkPrimary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}