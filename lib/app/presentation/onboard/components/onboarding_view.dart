import 'package:flutter/material.dart';
import 'package:flutter_challenge_bento/app/presentation/onboard/data/onboarding_model.dart';
import 'package:flutter_challenge_bento/app/shared/components/network_image.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_default.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({
    super.key,
    required this.data,
  });

  final OnboardingModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(AppDefaults.padding * 2),
            child: NetworkImageWithLoader(
              data.image,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppDefaults.padding),
          child: Column(
            children: [
              Text(
                data.headline,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(AppDefaults.padding),
                child: Text(
                  data.description,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
