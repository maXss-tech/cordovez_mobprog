import 'package:cordovez_mobprog/widgets/avatar_widget.dart';
import 'package:cordovez_mobprog/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationWidget extends StatelessWidget {
  final String name;
  final String post;
  final String description;
  final String? avatarPath;
  final String? timeAgo;

  const NotificationWidget({
    super.key,
    required this.name,
    required this.post,
    required this.description,
    this.avatarPath,
    this.timeAgo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AvatarWidget(imagePath: avatarPath),
          SizedBox(width: ScreenUtil().setWidth(10)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: name,
                  fontSize: ScreenUtil().setSp(16),
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                ),
                SizedBox(height: ScreenUtil().setHeight(2)),
                CustomText(
                  text: 'Post: $post',
                  fontSize: ScreenUtil().setSp(13),
                  color: Colors.black,
                ),
                SizedBox(height: ScreenUtil().setHeight(2)),
                CustomText(
                  text: description,
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.grey[700]!,
                  fontStyle: FontStyle.italic,
                ),
                if (timeAgo != null) ...[
                  SizedBox(height: ScreenUtil().setHeight(4)),
                  CustomText(
                    text: timeAgo!,
                    fontSize: ScreenUtil().setSp(11),
                    color: Colors.grey,
                  ),
                ],
              ],
            ),
          ),
          SizedBox(width: ScreenUtil().setWidth(8)),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
