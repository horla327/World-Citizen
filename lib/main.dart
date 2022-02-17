import 'package:flutter/material.dart';
import 'package:worldcitizen/onboarding_screen2.dart';
import 'onboarding_screen1.dart';
import 'signup_form.dart';

void main() {
  runApp(const WorldCitizen());
}

class WorldCitizen extends StatelessWidget {
  const WorldCitizen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: OnboardingPage.id,
      routes: {
        OnboardingScreen.id: (context) => const OnboardingScreen(),
        OnboardingPage.id: (context) => const OnboardingPage(),
        SignUpForm.id: (context) => const SignUpForm(),
      },
    );
  }
}
