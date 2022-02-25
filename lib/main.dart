import 'package:flutter/material.dart';
import 'package:worldcitizen/donate_nearby.dart';
import 'package:worldcitizen/donation_channel.dart';
import 'package:worldcitizen/onboarding_screen2.dart';
import 'package:worldcitizen/pickup_location.dart';
import 'package:worldcitizen/signup2.dart';
import 'package:worldcitizen/welcome_page.dart';
import 'onboarding_screen1.dart';
import 'signup_form.dart';
import 'sign_in.dart';
import 'donate_nearby2.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const WorldCitizen());
}

class WorldCitizen extends StatelessWidget {
  const WorldCitizen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: DonateNearbyRate.id,
      routes: {
        OnboardingScreen.id: (context) => const OnboardingScreen(),
        OnboardingPage.id: (context) => const OnboardingPage(),
        SignUpForm.id: (context) => const SignUpForm(),
        SignInForm.id: (context) => const SignInForm(),
        SignUp.id: (context) => const SignUp(),
        WelcomePage.id: (context) => const WelcomePage(),
        DonationChannel.id: (context) => const DonationChannel(),
        DonateNearby.id: (context) => const DonateNearby(),
        DonateNearbyRate.id: (context) => const DonateNearbyRate(),
        PickupLocation.id: (context) => const PickupLocation(),
      },
    );
  }
}
