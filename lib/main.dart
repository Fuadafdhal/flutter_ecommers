import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/config/app_router.dart';
import 'config/theme.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zero To Unicorn',
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
      home: const HomeScreen(),
    );
  }
}