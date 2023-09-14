import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:food_recipe/screens/homepage/home.dart';
import 'package:food_recipe/screens/learning/expanded.dart';
import 'package:food_recipe/screens/learning/flexible.dart';
import 'package:food_recipe/screens/learning/list_view_builder.dart';
import 'package:food_recipe/screens/learning/list_view.dart';
import 'package:food_recipe/screens/learning/list_view_separated.dart';
import 'package:food_recipe/screens/onboarding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.removeAfter(initialization);
  runApp(const MyApp());
}

Future initialization(BuildContext? context) async {
  await Future.delayed(const Duration(seconds: 3));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: OnBoarding(),
    );
  }
}
