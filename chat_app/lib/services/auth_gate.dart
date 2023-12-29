import 'package:chat_app/Pages/home_page.dart';
import 'package:chat_app/services/login_or_registor.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

  // Import the correct home page file
  // Import the correct login/register file

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return  HomePage();  // Replace with your actual home page widget
          } else {
            return const LoginOrRegisterState();  // Replace with your actual login/register widget
          }
        },
      ),
    );
  }
}
