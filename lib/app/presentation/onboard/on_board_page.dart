import 'package:flutter/material.dart';
import 'package:flutter_challenge_bento/app/presentation/onboard/data/onboarding_data.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_colors.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_default.dart';
import 'package:flutter_challenge_bento/app/shared/routes/app_routes.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/constants/app_icons.dart';
import 'components/onboarding_view.dart';
import 'data/onboarding_model.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnBoardingPage> {
  int currentPage = 0;
  late PageController controller;
  List<OnboardingModel> items = OnBoardingData.items;

  onPageChange(int value) {
    currentPage = value;
    setState(() {});
  }

  _gotoNextPage() {
    if (currentPage < items.length - 1) {
      controller.nextPage(
        duration: AppDefaults.duration,
        curve: Curves.ease,
      );
    } else {
      _gotoHome();
    }
  }

  _gotoHome() {
    Navigator.pushNamed(context, AppRoutes.homePage);
  }

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Expanded(
              flex: 16,
              child: PageView.builder(
                onPageChanged: onPageChange,
                itemCount: items.length,
                controller: controller,
                itemBuilder: (context, index) {
                  return OnboardingView(
                    data: items[index],
                  );
                },
              ),
            ),
            const Spacer(),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                TweenAnimationBuilder(
                  duration: AppDefaults.duration,
                  tween: Tween<double>(
                      begin: 0, end: (1 / items.length) * (currentPage + 1)),
                  curve: Curves.easeInOutBack,
                  builder: (context, double value, _) => SizedBox(
                    height: 70,
                    width: 70,
                    child: CircularProgressIndicator(
                      value: value,
                      strokeWidth: 6,
                      backgroundColor: AppColors.cardColor,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _gotoNextPage,
                  style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                  child: SvgPicture.asset(
                    AppIcons.arrowForward,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppDefaults.padding),
          ],
        ),
      ),
    );
  }
}
