import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge_bento/app/presentation/discount/discount_page.dart';
import 'package:flutter_challenge_bento/app/presentation/entrypoint/components/app_navigation_bar.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_colors.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_default.dart';

import '../account/account_page.dart';
import '../cart/cart_page.dart';
import '../home/pages/home_page.dart';

class EntryPointUI extends StatefulWidget {
  const EntryPointUI({super.key});

  @override
  State<EntryPointUI> createState() => _EntryPointUIState();
}

class _EntryPointUIState extends State<EntryPointUI> {
  /// Current Page
  int currentIndex = 0;

  /// On labelLarge navigation tap
  void onBottomNavigationTap(int index) {
    currentIndex = index;
    setState(() {});
  }

  /// All the pages
  List<Widget> pages = [
    const HomePage(),
    const DiscountPage(),
    const HomePage(),
    const CartPage(),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
          return SharedAxisTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            transitionType: SharedAxisTransitionType.horizontal,
            fillColor: AppColors.scaffoldBackground,
            child: child,
          );
        },
        duration: AppDefaults.duration,
        child: pages[currentIndex],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     onBottomNavigationTap(2);
      //   },
      //   backgroundColor: AppColors.primary,
      //   child: SvgPicture.asset(AppIcons.cart),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: currentIndex,
        onNavTap: onBottomNavigationTap,
      ),
    );
  }
}
