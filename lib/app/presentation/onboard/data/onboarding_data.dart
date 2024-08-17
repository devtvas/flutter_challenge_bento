import 'package:flutter_challenge_bento/app/shared/constants/app_images.dart';

import 'onboarding_model.dart';

class OnBoardingData {
  static List<OnboardingModel> items = [
    OnboardingModel(
      image: AppImages.onboarding1,
      headline: 'Browse all the category',
      description:
          'In aliquip aute exercitation ut et nisi ut mollit. Deserunt dolor elit pariatur aute .',
    ),
    OnboardingModel(
      image: AppImages.onboarding2,
      headline: 'Amazing Discounts & Offers',
      description:
          'In aliquip aute exercitation ut et nisi ut mollit. Deserunt dolor elit pariatur aute .',
    ),
    OnboardingModel(
      image: AppImages.onboarding3,
      headline: 'Delivery in 30 Min',
      description:
          'In aliquip aute exercitation ut et nisi ut mollit. Deserunt dolor elit pariatur aute .',
    ),
  ];
}
