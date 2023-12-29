import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_text_field.dart';
import 'package:chat_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class LoginPage extends StatefulWidget {
  final void Function()? onTap;
   
  const LoginPage({Key? key, required this.onTap}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void signIn()async{

    final authService = Provider.of<AuthService>(context, listen:false);
    try{
      await authService.signInWithEmailAndPassword(
        emailController.text,
        passwordController.text,
      );

    } catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50,),
                Icon(
                  Icons.message,
                  size: 80,
                  color: Colors.grey[800],
                ),
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                 const SizedBox(height: 50,),
                MyTextField(
                  controller: emailController,
                  hintText: "email",
                  obscureText: false,
                  
                ),
                 const SizedBox(height: 50,),
                MyTextField(
                  controller: passwordController,
                  hintText: "password",
                  obscureText: true,
                ),
                 const SizedBox(height: 50,),
                 MyButton(onTap: signIn, text: 'Sign In'),
                    const SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("not a Member?"),
                        const SizedBox(width: 4,),
                        GestureDetector(
                          onTap: widget.onTap,
                          child: const Text(
                            "Registor Now",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ) 
                      ],
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
