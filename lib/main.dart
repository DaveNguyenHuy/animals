import 'package:animals/screens/play_screen.dart';
import 'package:animals/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

main() {
  runApp(AnimalApp());
}

class AnimalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.tealAccent,
      ),
      title: 'animals app',
      initialRoute: WelcomeScreen.id,
      routes: {
        PlayScreen.id: (context) => PlayScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
      },
    );
  }
}
