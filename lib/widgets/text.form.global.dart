import 'package:flutter/material.dart';
import 'package:workout_health_front_end/constant/colors.dart';

class TextFormGlobal extends StatelessWidget{
   const TextFormGlobal({
    super.key,
     required this.controller,
    required this.text,
    required this.textInputType,
    required this.obscure});

    final TextEditingController controller ;
    final String text;
    final TextInputType textInputType;
    final bool obscure;
  
  @override
  Widget build(BuildContext context) {
     return TextFormField(

        controller: controller,
        keyboardType: textInputType, // numeric keyboard or email keyboard
        obscureText:obscure, // true for password input to hide keyboard
        cursorColor: pPrimapryColor,

        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(13),
          floatingLabelBehavior: FloatingLabelBehavior.always, // to fixe the labelText in the top
          labelText: text, 
          labelStyle: const TextStyle(
            color: pPrimapryColor,
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 2,
          ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: pPrimapryColor,
              width: 2,
            ),
          ),
        ),
    ); 
  }
  
}