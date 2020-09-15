import 'package:flutter/material.dart';
import 'package:sercy/screens/chat_screen.dart';
import 'package:sercy/screens/choose_screen.dart';
import 'package:sercy/screens/intro_screen.dart';
import 'package:sercy/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sercy/screens/therapist_screen.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Device orientation always up.
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: IntroScreen.id,
      routes: {
        ChatScreen.id: (context) => ChatScreen(),
        IntroScreen.id: (context) => IntroScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        TherapistScreen.id: (context) => TherapistScreen(),
        ChooseScreen.id: (context) => ChooseScreen(),
      },
    );
  }
}
