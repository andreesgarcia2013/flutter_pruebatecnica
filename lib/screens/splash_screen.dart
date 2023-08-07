import 'package:flutter/material.dart';
import 'package:flutter_pruebatecnica/screens/login_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const LoginScreen(),
      duration: 5000,
      imageSize: 130,
      imageSrc: "assets/MvC2_logo.png",
      backgroundColor: Colors.black,
    );
  }
}