import 'package:flutter/material.dart';
import 'package:workout_health_front_end/constant/colors.dart';
import 'package:workout_health_front_end/widgets/material.button.global.dart';
import 'package:workout_health_front_end/widgets/text.form.global.dart';
import 'package:workout_health_front_end/view/informationsAndGoal/weeklygoal.dart';

class YouPage2 extends StatefulWidget {
 // final Map<String, dynamic> body;
  static double height = 0;
  static double weight = 0;
 // YouPage2({required this.body});
  YouPage2();
  @override
  _YouPage2State createState() => _YouPage2State();
}

class _YouPage2State extends State<YouPage2> {
 // int activeButtonIndex = -1; // No active button at the beginning
  bool isFocused = false;
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  FocusNode _focusNode = FocusNode();

 // AthleteController athleteController = new AthleteController();
  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
    _textEditingController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    _textEditingController.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'You',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: pPrimapryColor,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white, // Set the icon color to white
            ),
            onPressed: () {
              Navigator.pop(context);
              // Handle the back button press here
            },
          ),
        ),
        backgroundColor:
            Colors.white, // Set the background color of the scaffold to blue
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 5,
                            width: 43,
                            color: pPrimapryColor,
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 5,
                            width: 43,
                            color: pPrimapryColor,
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 5,
                            width: 43,
                            color: pPrimapryColor,
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 5,
                            width: 43,
                            color: const Color.fromARGB(255, 211, 211, 211),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 5,
                            width: 43,
                            color: const Color.fromARGB(255, 211, 211, 211),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How tall are you?',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                              height: 1.8,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      TextFormGlobal(controller:_heightController, text: "Height", textInputType: TextInputType.number, obscure: false),
                      //MyDropDown(labelText: 'Height'),
                      const SizedBox(height: 20),
                      const Text(
                        'How much do you weight?',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                          height: 1.8,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormGlobal(controller:_weightController, text: "Weight", textInputType: TextInputType.number, obscure: false),
                     // MyDropDown(labelText: 'Weight'),
                      const SizedBox(height: 7),
                      const Padding(
                        padding: EdgeInsets.only(top: 0, left: 15.0, right: 0),
                        child: Text(
                            'It’s okay to estimate, you can update this later.',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 225,),
                  MaterialButtonGlobal(text: "Next", textColor: Colors.white, buttonColor: pPrimapryColor, onPressed:(){
                    // widget.body['height'] = YouPage2.height;
                            // widget.body['weight'] = YouPage2.weight;
                            // print(widget.body);
                            // if (widget.body['goal'] == 1) //maintain
                            // {
                            //    widget.body['weekly_goal'] = 0;
                            //    widget.body['goal_weight'] = 0;
                            //   athleteController.AddAthlete(widget.body);
                            //   Navigator.of(context)
                            //       .push(MaterialPageRoute(builder: (context) {
                            //     return UserPage();
                            //   }));
                            // } else {
                            //   if(widget.body['goal']==2)
                            //   {
                            //     WeeklyGoal.goal ="Gain";
                            //   }
                            //     Navigator.of(context)
                            //     .push(MaterialPageRoute(builder: (context) {
                            //   return WeeklyGoal(body:widget.body);
                            // }));
                            // }
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return WeeklyGoal();
                            }));
                  } ),
                ],
              ),
            ),
          ),
        ));
  }
}

// class MyDropDown extends StatefulWidget {
//   final String labelText;

//   MyDropDown({required this.labelText});
//   @override
//   _MyDropDownState createState() => _MyDropDownState();
// }

// class _MyDropDownState extends State<MyDropDown> {
//   String? selectedOption;

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField<String>(
//       value: selectedOption,
//       onChanged: (newValue) {
//         setState(() {
//           selectedOption = newValue;
//           if (widget.labelText == "Height") {
//             YouPage2.height = double.parse(newValue!);
//           } else {
//             YouPage2.weight = double.parse(newValue!);
//           }
//         });
//       },
//       decoration: InputDecoration(
//         labelText: widget.labelText,
//         labelStyle: TextStyle(
//           color: selectedOption != null
//               ? Color.fromARGB(255, 62, 132, 140)
//               : Colors.grey,
//         ),
//         contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(5),
//           borderSide: BorderSide(color: Colors.grey, width: 1),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(5),
//           borderSide:
//               BorderSide(color: Color.fromARGB(255, 62, 132, 140), width: 2),
//         ),
//       ),
//       items: [
//         DropdownMenuItem<String>(
//           value: '185',
//           child: Text('185'),
//         ),
//         DropdownMenuItem<String>(
//           value: '190',
//           child: Text('190'),
//         ),
//         DropdownMenuItem<String>(
//           value: '172',
//           child: Text('172'),
//         ),
//         DropdownMenuItem<String>(
//           value: '160',
//           child: Text('160'),
//         ),
//         DropdownMenuItem<String>(
//           value: '85',
//           child: Text('85'),
//         ),
//         DropdownMenuItem<String>(
//           value: '70',
//           child: Text('70'),
//         ),
//         DropdownMenuItem<String>(
//           value: '30',
//           child: Text('30'),
//         ),
//       ],
//     );
//   }
// }
