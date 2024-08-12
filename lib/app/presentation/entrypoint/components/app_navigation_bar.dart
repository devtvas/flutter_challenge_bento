import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_icons.dart';
import 'package:flutter_svg/svg.dart';

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
  List<TabItem> items = [
    TabItem(title: 'Home', icon: null, count: SvgPicture.asset(AppIcons.home)),
    TabItem(
        title: 'Delas',
        icon: Icons.home,
        count: SvgPicture.asset(AppIcons.home)),
    TabItem(
        title: 'Home',
        icon: Icons.home,
        count: SvgPicture.asset(AppIcons.home)),
    TabItem(
        title: 'Cart',
        icon: Icons.home,
        count: SvgPicture.asset(AppIcons.home)),
  ];
  Color color2 = const Color(0XFF96B1FD);
  Color bgColor = const Color(0XFF1752FE);
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.only(bottom: 30, right: 32, left: 32),
      child: BottomBarInspiredInside(
        items: items,
        backgroundColor: bgColor,
        color: color2,
        colorSelected: Colors.white,
        titleStyle: const TextStyle(fontSize: 8, color: Colors.black),
        indexSelected: widget.currentIndex,
        onTap: (int index) => setState(() {
          widget.onNavTap(index);
        }),
        chipStyle: const ChipStyle(convexBridge: true),
        itemStyle: ItemStyle.circle,
        animated: false,
      ),
    );
  }
}
