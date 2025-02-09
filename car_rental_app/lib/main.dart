import 'package:car_rental_app/firebase_options.dart';
import 'package:car_rental_app/presentation/pages/car_list_screen.dart';
import 'package:car_rental_app/presentation/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'h',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 65, 56, 80)),
        useMaterial3: true,
      ),
      home: OnboardingPage(),
    );
  }
}
