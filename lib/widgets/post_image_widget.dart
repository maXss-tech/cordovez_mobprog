import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostImageWidget extends StatelessWidget {
  final String imagePath;

  const PostImageWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image(
        image: AssetImage(imagePath),
        width: double.infinity,
        height: ScreenUtil().setHeight(220),
        fit: BoxFit.cover,
      ),
    );
  }
}