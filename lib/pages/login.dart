import 'package:chat_messenger_app/components/myButton.dart';
import 'package:chat_messenger_app/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn () {}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [

                  //logo
                  const Icon(Icons.lock_outlined, size: 80,),

                  const SizedBox(height: 15,),

                  //text
                  const Text(
                    'Welcome Back!!!',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),

                  ),
                  const SizedBox(height: 25,),
                  //text field
                  MyTextField(
                      controller: emailController,
                      hintText: 'Email',
                      obscureText: false
                  ),

                  const SizedBox(height: 25,),

                  MyTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: true
                  ),
                  const SizedBox(height: 25,),

                  MyButton(onTap: signIn, text: 'Sign In'),

                  const SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Not a member?'),
                      const SizedBox(width: 5,),
                      Text('Register Now',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
