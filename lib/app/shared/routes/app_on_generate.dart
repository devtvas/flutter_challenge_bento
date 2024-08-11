import 'package:flutter/cupertino.dart';
import 'package:flutter_challenge_bento/app/presentation/home/pages/home_page.dart';
import 'package:flutter_challenge_bento/app/presentation/unknown/unknown_page.dart';
import 'package:flutter_challenge_bento/app/shared/routes/app_routes.dart';

import '../../presentation/onboard/on_board_page.dart';

class RouteGenerator {
  static Route? onGenerate(RouteSettings settings) {
    final route = settings.name;

    switch (route) {
      case AppRoutes.onBoarding:
        return CupertinoPageRoute(builder: (_) => const OnBoardingPage());
      case AppRoutes.homePage:
        return CupertinoPageRoute(builder: (_) => const HomePage());
      default:
        return errorRoute();
    }
  }

  static Route? errorRoute() =>
      CupertinoPageRoute(builder: (_) => const UnknownPage());
}
