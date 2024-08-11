import 'package:flutter/material.dart';
import 'package:flutter_challenge_bento/app/app_widget.dart';
import 'package:flutter_challenge_bento/app/shared/dependencies/app_instance.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: "assets/.env");

  await initializeDependencies();

  runApp(const AppWidget());
}
