

import 'package:flutter/material.dart';
import 'package:workout_health_front_end/constant/colors.dart';

class SimpleCard extends StatelessWidget{
  const SimpleCard({
    super.key,
    required this.info,
    required this.title,
    });

    final String info;
    final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 60,
      decoration: BoxDecoration(
        color:  Colors.white,
        border: Border.all(color: pPrimapryColor, width: 2),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(info,style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),
          Text(title,style: const TextStyle(
            fontSize: 13,
            color: Colors.black,
          ),
          ),
        ],
      ),
    );
  }


}