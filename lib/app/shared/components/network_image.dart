import 'package:flutter/material.dart';
import 'package:flutter_challenge_bento/app/shared/constants/app_default.dart';

class NetworkImageWithLoader extends StatelessWidget {
  final BoxFit fit;

  /// This widget is used for displaying network image with a placeholder
  const NetworkImageWithLoader(
    this.src, {
    super.key,
    this.fit = BoxFit.cover,
    this.radius = AppDefaults.radius,
    this.borderRadius,
  });

  final String src;
  final double radius;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.all(Radius.circular(radius)),
      child: Image.asset(
        src,
      ),
    );
  }
}
