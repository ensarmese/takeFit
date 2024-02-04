// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:take_fit/screens/aboutus_screen.dart';
import 'package:take_fit/screens/nutrien_input_screen.dart';
import 'package:take_fit/screens/water_screen.dart';
import 'screens/edit_profile_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/register_screen.dart';
import 'screens/settings.dart';
import 'screens/training_screen.dart';
import 'screens/loading_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/profile': (context) => ProfileScreen(),
        '/register': (context) => RegisterScreen(),
        '/loading': (context) => LoadingScreen(),
        '/aboutus': (context) => AboutUsScreen(),
        '/nutrien': (context) => NutrientScreen(),
        '/water': (context) => WaterScreen(),
        '/settings': (context) => SettingsScreen(),
        '/training': (context) => TrainingScreen(),
        '/edit': (context) => EditProfileScreen(),
      },
      initialRoute: '/login',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
