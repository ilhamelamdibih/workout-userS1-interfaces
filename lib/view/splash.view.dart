import 'package:flutter/material.dart';
import 'package:workout_health_front_end/constant/colors.dart';
import 'package:workout_health_front_end/constant/images.dart';
import 'package:workout_health_front_end/view/login.view.dart';
import 'package:workout_health_front_end/widgets/material.button.global.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(splashImage),
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color.fromARGB(173, 40, 40, 40),
            // column that contain the logo and the button 
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  // Logo
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.25,
                    ),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(logoWhite),
                      ),
                    ),
                  ),
                ),
                // slogen
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.15,
                      vertical: 10
                    ),
                    width: double.infinity,
                    child: Column(   
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                         const Text(
                          'Fit mind, Fit body.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color:Colors.white,
                          ),
                        ),
                        const SizedBox(height: 18,),
                        //button Start
                        MaterialButtonGlobal(text: "Start", textColor: Colors.white, buttonColor:pPrimapryColor, onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return const LoginView();
                          }));
                        }),


                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
