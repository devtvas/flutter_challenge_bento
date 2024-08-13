import 'package:flutter/material.dart';

class TextDescription extends StatelessWidget {
  final String textDescription;
  String? textButton;
  Function()? onTap;

  TextDescription(
      {super.key,
      required this.textDescription,
      this.textButton = "",
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textDescription,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              textButton!,
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
