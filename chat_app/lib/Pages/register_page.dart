import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_text_field.dart';
import 'package:chat_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
    final void Function()? onTap;
 const RegisterPage({Key? key, required this.onTap}) : super(key: key);
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =TextEditingController();
  void signUp()async{
    if(passwordController.text!=  confirmPasswordController.text){
      ScaffoldMessenger.of(context).showSnackBar(
         const SnackBar(
          content: Text("password do not match"),
         ),
        );
      return;
    }
    final authService = Provider.of<AuthService>(context,listen:false);
    try{
      await authService.signInWithEmailandPassword(
        emailController.text, passwordController.text,);
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(e.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
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
                  'Lets create an account for you!',
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
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: "confirm password",
                  obscureText: true,
                ),
                 const SizedBox(height: 50,),
                 MyButton(onTap: signUp, text: 'Sign up'),
                    const SizedBox(height: 50,),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                   const     Text("already a Member?"),
                         const SizedBox(width: 4,),
                        GestureDetector(
                          onTap: widget.onTap,
                          child: const Text(
                            "Login  Now",
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

