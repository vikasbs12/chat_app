import 'package:chat_app/Pages/register_page.dart';
import 'package:chat_app/login_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterState extends StatefulWidget {
  const LoginOrRegisterState({super.key});

  @override
  State<LoginOrRegisterState> createState() => _LoginOrRegisterStateState();
}

class _LoginOrRegisterStateState extends State<LoginOrRegisterState> {
  bool showLoginPage = true;
    void togglePages(){
      setState(() {
        showLoginPage = !showLoginPage;
      });
    }
  
  @override
  Widget build(BuildContext context) {
   if(showLoginPage){
    return LoginPage(onTap: togglePages);
   }else return RegisterPage(onTap: togglePages);
  }
}

