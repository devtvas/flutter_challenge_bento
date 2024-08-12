import 'package:flutter/cupertino.dart';
import 'package:flutter_challenge_bento/app/presentation/entrypoint/entry_point_ui.dart';
import 'package:flutter_challenge_bento/app/presentation/home/pages/home_page.dart';
import 'package:flutter_challenge_bento/app/presentation/unknown/unknown_page.dart';
import 'package:flutter_challenge_bento/app/shared/routes/app_routes.dart';

import '../../presentation/onboard/on_board_page.dart';
import '../../presentation/product/product_detail_page.dart';

class RouteGenerator {
  static Route? onGenerate(RouteSettings settings) {
    final route = settings.name;

    switch (route) {
      case AppRoutes.onBoardingPage:
        return CupertinoPageRoute(builder: (_) => const OnBoardingPage());
      case AppRoutes.entryPointUI:
        return CupertinoPageRoute(builder: (_) => const EntryPointUI());
      case AppRoutes.homePage:
        return CupertinoPageRoute(builder: (_) => const HomePage());
      case AppRoutes.productDetailPage:
        return CupertinoPageRoute(builder: (_) => ProductDetailPage());
      default:
        return errorRoute();
    }
  }

  static Route? errorRoute() =>
      CupertinoPageRoute(builder: (_) => const UnknownPage());
}
