import 'package:flutter/material.dart';
import 'package:flutter_pruebatecnica/providers/users_api.dart';
import 'package:flutter_pruebatecnica/routes/router.dart';
import 'package:flutter_pruebatecnica/screens/login_screen.dart';
import 'package:flutter_pruebatecnica/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => UserApi()),
    ],
    child: const MyApp()
  )
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const SplashScreen(),
      routes: getAplicationRoutes(),
    );
  }
}