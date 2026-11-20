import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvatarWidget extends StatelessWidget {
  final String? imagePath;
  final double size;

  const AvatarWidget({super.key, this.imagePath, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: ScreenUtil().setSp(size / 2),
      backgroundColor: Colors.grey[300],
      backgroundImage: imagePath != null ? AssetImage(imagePath!) : null,
      child: imagePath == null
          ? Icon(Icons.person, size: ScreenUtil().setSp(size * 0.6))
          : null,
    );
  }
}