import 'package:flutter/material.dart';

import '../components/myButton.dart';
import '../components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;


  const RegisterPage({Key? key, this.onTap}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();


}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  void signUp() {}

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
                    "Register Now ",
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

                  MyTextField(
                      controller: confirmpasswordController,
                      hintText: 'Confirm Password',
                      obscureText: true
                  ),

                  const SizedBox(height: 25,),

                  MyButton(onTap: signUp, text: 'Sign Up'),

                  const SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already member?'),
                      const SizedBox(width: 5,),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text('Login Now',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold
                          ),),
                      )
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
