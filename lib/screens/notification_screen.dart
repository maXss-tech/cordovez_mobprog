import 'package:cordovez_mobprog/widgets/notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override 
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: Column(
        children: const [

          NotificationWidget(
            description: 'Sample description',
            post: 'Sample Post',
            name: 'Sample Name',
            avatarPath: 'assets/images/iron_man.jpg'
          ),
          
          Divider(),
        ],
      ),
    );
  }
}
