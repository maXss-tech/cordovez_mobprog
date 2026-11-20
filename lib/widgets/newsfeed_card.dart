import 'package:cordovez_mobprog/widgets/action_bar_widget.dart';
import 'package:cordovez_mobprog/widgets/avatar_widget.dart';
import 'package:cordovez_mobprog/widgets/custom_text.dart';
import 'package:cordovez_mobprog/widgets/post_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final bool? hasImage;
  final String? avatarPath;
  final String? postImagePath;

  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.hasImage,
    this.avatarPath,
    this.postImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header - Enhancement 2: AvatarWidget
            Row(
              children: [
                AvatarWidget(imagePath: avatarPath),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: userName,
                        fontSize: ScreenUtil().setSp(15),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        children: [
                          CustomText(
                            text: date,
                            fontSize: ScreenUtil().setSp(12),
                            color: Colors.grey,
                          ),
                          SizedBox(width: ScreenUtil().setWidth(3)),
                          Icon(
                            Icons.public,
                            color: Colors.grey,
                            size: ScreenUtil().setSp(15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            // Enhancement 1: PostImageWidget
            if (hasImage == true)
              PostImageWidget(
                imagePath: postImagePath ?? 'assets/images/iron_man.jpg',
              ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            // Enhancement 3: ActionBarWidget
            ActionBarWidget(
              numOfLikes: numOfLikes,
              onLike: () {},
              onComment: () {},
              onShare: () {},
            ),
            SizedBox(height: ScreenUtil().setHeight(8)),
            // Comment box
            Row(
              children: [
                AvatarWidget(imagePath: avatarPath, size: 28),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: ScreenUtil().setHeight(25),
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(10)),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(
                        ScreenUtil().setSp(10),
                      ),
                    ),
                    child: CustomText(
                      text: 'Write a comment...',
                      fontSize: ScreenUtil().setSp(11),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomText(
              text: 'View all comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}