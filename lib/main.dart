import 'package:flutter/material.dart';
import 'package:worldcitizen/screens/ResetScreen.dart';
import 'screens/donate_nearby.dart';
import 'package:worldcitizen/donation_channel.dart';
import 'package:worldcitizen/screens/onboarding_screen2.dart';
import 'package:worldcitizen/pickup_location.dart';
import 'package:worldcitizen/screens/signup2.dart';
import 'package:worldcitizen/screens/welcome_page.dart';
import 'screens/onboarding_screen1.dart';
import 'signup_form.dart';
import 'screens/sign_in.dart';
import 'screens/donate_nearby2.dart';
import 'screens/pickup_details.dart';
import 'screens/confirm_pickupdetails.dart';
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
      initialRoute: OnboardingScreen.id,
      routes: {
        OnboardingScreen.id: (context) => const OnboardingScreen(),
        OnboardingPage.id: (context) => const OnboardingPage(),
        SignUpForm.id: (context) => const SignUpForm(),
        SignInForm.id: (context) => const SignInForm(),
        SignUp.id: (context) => const SignUp(),
        WelcomePage.id: (context) => WelcomePage(""),
        DonationChannel.id: (context) => const DonationChannel(),
        DonateNearby.id: (context) => const DonateNearby(),
        DonateNearbyRate.id: (context) => const DonateNearbyRate(),
        PickupLocation.id: (context) => const PickupLocation(),
        PickUpDetails.id: (context) => const PickUpDetails(),
        ConfirmPickUpDetails.id: (context) => const ConfirmPickUpDetails(),
        ResetScreen.id: (context) => const ResetScreen(),
      },
    );
  }
}
