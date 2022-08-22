import 'package:flutter/material.dart';
import 'package:naijasocial/components/colors.dart';
import 'package:naijasocial/screens/welcome_screen.dart';
import 'package:naijasocial/screens/login_screen.dart';
import 'package:naijasocial/screens/registration_screen.dart';
import 'package:naijasocial/screens/chat_screen.dart';

class NaijaSocial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: PalletteColors.primaryRed,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: PalletteColors.lightSkin),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
