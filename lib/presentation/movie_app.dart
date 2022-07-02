import 'package:flutter/material.dart';
import 'package:movie_app/presentation/theme/theme_text.dart';

import '../common/screenutil/screenutil.dart';
import '../themes/app_color.dart';
import 'journey/home/home_screen.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MovieApp',
      theme: ThemeData(
          primaryColor: AppColor.vulcan,
          scaffoldBackgroundColor: AppColor.vulcan,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: ThemeText.getTextTheme(),
          appBarTheme: AppBarTheme(elevation: 0)),
      home: HomeScreen(),
    );
  }
}
