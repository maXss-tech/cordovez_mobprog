import 'package:cordovez_mobprog/screens/home_screen.dart';
import 'package:cordovez_mobprog/screens/newsfeed_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '【entity-Facebook¦canonical_name=Facebook】 Replication',
          initialRoute: "/home",
          routes: {
            "/newsfeed": (context) => const NewsfeedScreen(),
            "/home": (context) => const HomeScreen(),
          },
        );
      },
    );
  }
}