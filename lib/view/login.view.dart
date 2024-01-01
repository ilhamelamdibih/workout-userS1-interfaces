import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:workout_health_front_end/constant/colors.dart';
import 'package:workout_health_front_end/constant/images.dart';
import 'package:workout_health_front_end/view/informationsAndGoal/goals.dart';
import 'package:workout_health_front_end/view/register.view.dart';
import 'package:workout_health_front_end/widgets/material.button.global.dart';
import 'package:workout_health_front_end/widgets/text.form.global.dart';

class LoginView extends StatefulWidget {
  
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  //static AuthController authController = new AuthController();
 
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool remember = false;

  void Login() {
    if (emailController.text == "" || passwordController.text == "") {
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              'Warning',
              style: TextStyle(color: pPrimapryColor),
            ),
            content: const Text('All fields must be filled !'),
            actions: <Widget>[
              TextButton(
                child: const Text(
                  'I understand',
                  style: TextStyle(color: pPrimapryColor),
                ),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
            ],
          );
        },
      );
    } else {
      QuickAlert.show(
        context: context,
        type: QuickAlertType.loading,
        title: 'Loading',
        text: 'Verifying',
      );
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return GoalPage();
                          }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.white38,
          child: Column(
            children: [
              // logo and title
              Container(
                padding: const EdgeInsets.only(top: 45),
                height: 260,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(logoDark, fit: BoxFit.cover, width: 140),
                    const Text(
                      'Welcome Back',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        height: 2.0,
                        letterSpacing: 1,
                      ),
                    ),
                    const Text(
                      'Sign in',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.16,
                        color: Color(0xff7d7d7d),
                      ),
                    ),
                  ],
                ),
              ),
              // inputs and button
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 50),
                height: 210,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Email adresse input
                    TextFormGlobal(
                        controller: emailController,
                        text: "Email Adresse",
                        textInputType: TextInputType.emailAddress,
                        obscure: false),
                    //password input
                    TextFormGlobal(
                        controller: passwordController,
                        text: "Password",
                        textInputType: TextInputType.text,
                        obscure: true),

                    // button login
                    MaterialButtonGlobal(
                        text: "login",
                        textColor: Colors.white,
                        buttonColor: pPrimapryColor,
                        onPressed: () {
                          Login();
                        }),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Are you a new visitor ?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        height: 1,
                        letterSpacing: -0.13,
                        color: Color(0xff8c8c8c),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return RegisterView();
                        }));
                      },
                      textColor: pPrimapryColor,
                      height: 40,
                      child: const Text(
                        'Register Now',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
