import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_colors.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onNavTap,
  });

  final int currentIndex;
  final void Function(int) onNavTap;

  @override
  State<AppBottomNavigationBar> createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  List<TabItem> items = const [
    TabItem(
      title: 'Home',
      icon: Icons.home,
    ),
    TabItem(
      title: 'Delas',
      icon: Icons.local_offer_rounded,
    ),
    TabItem(
      title: 'Store',
      icon: Icons.store_rounded,
    ),
    TabItem(
      title: 'Cart',
      icon: Icons.local_mall_rounded,
    ),
    TabItem(
      title: 'Account',
      icon: Icons.person,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BottomBarInspiredInside(
        animated: true,
        indexSelected: widget.currentIndex,
        items: items,
        itemStyle: ItemStyle.circle,
        backgroundColor: AppColors.scaffoldBackground,
        color: AppColors.primaryLigth,
        colorSelected: AppColors.primaryLigth,
        titleStyle: const TextStyle(fontSize: 10),
        chipStyle: const ChipStyle(
            convexBridge: true, background: AppColors.secondary),
        onTap: (int index) => setState(
          () {
            widget.onNavTap(index);
          },
        ),
      ),
    );
  }
}
