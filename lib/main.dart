import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sinu_guide/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Sinu Guide',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'Changa'),
          home: const Directionality(
            textDirection: TextDirection.rtl,
            child: HomeScreen(),
          ),
        );
      },
    );
  }
}
