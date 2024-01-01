import 'package:flutter/material.dart';
import 'package:workout_health_front_end/constant/colors.dart';
import 'package:workout_health_front_end/view/profile.view.dart';
import 'package:workout_health_front_end/widgets/material.button.global.dart';
import 'package:workout_health_front_end/widgets/text.form.global.dart';

class WeeklyGoal extends StatefulWidget {
  // final Map<String, dynamic> body;
  // WeeklyGoal({required this.body});
  WeeklyGoal();
  static String goal = "Lose";
  static double weight = 0;
  static int weekly_goal = 0;
  @override
  _WeeklyGoalState createState() => _WeeklyGoalState();
}

class _WeeklyGoalState extends State<WeeklyGoal> {
  int activeButtonIndex = -1; // No active button at the beginning
  bool isFocused = false;
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  FocusNode _focusNode = FocusNode();

  //AthleteController athleteController = new AthleteController();

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
            'Weekly Goal',
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
                            color: pPrimapryColor,
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
                            'What’s your goal weight ?',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                              height: 1.8,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      TextFormGlobal(
                          controller: _weightController,
                          text: "Weight",
                          textInputType: TextInputType.number,
                          obscure: false),
                      //MyDropDown(labelText: 'Weight'),
                      const SizedBox(height: 7),
                      const Padding(
                        padding: EdgeInsets.only(top: 0, left: 15.0, right: 0),
                        child: Text(
                            'Don’t worry. This doesn’t affect your daily calories goal and you can always change it later.',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey)),
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        'What’s your weekly goal ?',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                          height: 1.8,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ActiveButtonExample()
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  MaterialButtonGlobal(
                      text: "Next",
                      textColor: Colors.white,
                      buttonColor: pPrimapryColor,
                      onPressed: () {
                        //  widget.body['weekly_goal'] = WeeklyGoal.weekly_goal;
                        //     widget.body['goal_weight'] = WeeklyGoal.weight;
                        //     athleteController.AddAthlete(widget.body);
                        //     Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        //       return UserPage();
                        //     }));
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return const ProfilePage();
                            }));
                      }),
                 
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
//           WeeklyGoal.weight = double.parse(newValue!);
//         });
//       },
//       decoration: InputDecoration(
//         labelText: widget.labelText,
//         labelStyle: TextStyle(
//           color: selectedOption != null
//               ? const Color.fromARGB(255, 62, 132, 140)
//               : Colors.grey,
//         ),
//         contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(5),
//           borderSide: const BorderSide(color: Colors.grey, width: 1),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(5),
//           borderSide:
//               const BorderSide(color: Color.fromARGB(255, 62, 132, 140), width: 2),
//         ),
//       ),
//       items: [
//          DropdownMenuItem<String>(
//           value: '185',
//           child: Text('185'),
//         ),
//          DropdownMenuItem<String>(
//           value: '190',
//           child: Text('190'),
//         ),
//          DropdownMenuItem<String>(
//           value: '172',
//           child: Text('172'),
//         ),
//          DropdownMenuItem<String>(
//           value: '160',
//           child: Text('160'),
//         ),
//          DropdownMenuItem<String>(
//           value: '85',
//           child: Text('85'),
//         ),
//          DropdownMenuItem<String>(
//           value: '70',
//           child: Text('70'),
//         ),
//          DropdownMenuItem<String>(
//           value: '30',
//           child: Text('30'),
//         ),
//       ],
//     );
//   }
// }

class ActiveButtonExample extends StatefulWidget {
  @override
  _ActiveButtonExampleState createState() => _ActiveButtonExampleState();
}

class _ActiveButtonExampleState extends State<ActiveButtonExample> {
  int activeButtonIndex = -1; // No active button at the beginning

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildButton(0, WeeklyGoal.goal + ' 0.25 kg per week'),
        const SizedBox(height: 9),
        buildButton(1, WeeklyGoal.goal + ' 0.5 kg per week (Recommended)'),
        const SizedBox(height: 9),
        buildButton(2, WeeklyGoal.goal + ' 0.75 kg per week'),
        const SizedBox(height: 9),
        buildButton(3, WeeklyGoal.goal + ' 1 kg per week'),
      ],
    );
  }

  Widget buildButton(int index, String text) {
    return SizedBox(
      width: double.infinity,
      height: 50, // Make the buttons take full width
      child: TextButton(
        onPressed: () {
          setState(() {
            activeButtonIndex = index;
            WeeklyGoal.weekly_goal = index;
          });
          // Add button logic here, you can use `activeButtonIndex` to identify the active button.
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(
              color: activeButtonIndex == index ? pPrimapryColor : Colors.grey,
              width: activeButtonIndex == index ? 2.0 : 1.0,
            ),
          ),
          alignment: Alignment.centerLeft,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 0, left: 15.0, right: 0),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 15,
                color:
                    activeButtonIndex == index ? pPrimapryColor : Colors.black),
          ),
        ),
      ),
    );
  }
}
