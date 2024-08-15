import 'package:flutter/material.dart';
import 'package:flutter_challenge_bento/app/shared/routes/app_routes.dart';

import 'shared/routes/app_on_generate.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData();
    return MaterialApp(
      theme: themeData,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.onGenerate,
      initialRoute: AppRoutes.onBoardingPage,
    );
  }
}
