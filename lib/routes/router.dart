import 'package:flutter/material.dart';
import 'package:flutter_pruebatecnica/screens/screens.dart';

Map<String, WidgetBuilder> getAplicationRoutes(){
  return <String, WidgetBuilder>{
    '/login':(BuildContext context) => const LoginScreen(),
    '/home':(BuildContext context) => const HomeScreen(),
  };
}