import 'package:bookly/app_constants.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: kPrimaryColor,
    ),
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
