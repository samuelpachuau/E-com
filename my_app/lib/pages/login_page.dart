import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/components/my_button.dart';
import 'package:my_app/components/my_textfield.dart';
import 'package:my_app/components/SquareTile.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //signUserIn
  void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.green[300],
      body:SafeArea(
        child: Center(
          child: Column(
            children:[
              
              const SizedBox(height:5),
              
              //logo
              Container(
                height:250,
                width: 500,
                child:Image.asset('lib/Logos/AgriFresh_logo.png'),
              ),

              const SizedBox(height: 0),
              
              //Login Message
              Text(
                'LOGIN',
                style:GoogleFonts.aBeeZeeTextTheme,
                TextStyle(color:Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w900),
              ),

              const SizedBox(height: 20),
          
              //Username Textfield
              MyTextfield(
                controller: usernameController,
                hinText: 'Email or Username',
                obscureText: false,
              ),

            const SizedBox(height: 30),

              //Password Textfield
              MyTextfield(
                controller: passwordController,
                hinText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 20),
              //Forgot Password

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style:TextStyle(
                        color: Colors.black,
                        fontSize: 15)),
                  ],
                ),
              ),
              
              const SizedBox(height: 30),

              //Sign in button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height:20),

              //or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height:30),

              //alternative sign in
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button
                  SquareTile(imagePath: 'lib/Logos/google_logo.png'),

                ],
              ),

              const SizedBox(height: 50),          
              //register
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
               )             
            ],
          ),
        ),
      )
    );
  }
}