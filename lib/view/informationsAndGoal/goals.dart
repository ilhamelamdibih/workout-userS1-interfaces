import 'package:flutter/material.dart';
import 'package:workout_health_front_end/constant/colors.dart';
import 'package:workout_health_front_end/view/informationsAndGoal/you.dart';
import 'package:workout_health_front_end/widgets/material.button.global.dart';

class GoalPage extends StatefulWidget {
  //final Map<String, dynamic>? body;
  static int index = -1;
  GoalPage();
  //GoalPage({this.body});

  @override
  _GoalPageState createState() => _GoalPageState();
}

class _GoalPageState extends State<GoalPage> {
  //int activeButtonIndex = -1; // No active button at the beginning

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'goals',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: pPrimapryColor,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 7,
                  child: Column(
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
                            color: const Color.fromARGB(255, 211, 211, 211),
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
                            'Let’s start with goals',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(height: 7),
                          Text('Select  goals that ar important to you',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey))
                        ],
                      ),
                      const SizedBox(height: 40),
                      ActiveButtonExample()
                    ],
                  )),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: MaterialButtonGlobal(
                          text: "Next",
                          textColor: Colors.white,
                          buttonColor: pPrimapryColor,
                          onPressed: () {
                           // widget.body!['goal'] = GoalPage.index;
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return YouPage(
                             // body: widget.body!,
                              );
                            }));
                          })
                      ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(color: Colors.white),
              )
            ],
            //Steps
          ),
        ));
  }
}

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
        buildButton(0, 'Lose weight'),
        const SizedBox(height: 9),
        buildButton(1, 'Maintain weight'),
        const SizedBox(height: 9),
        buildButton(2, 'Gain weight'),
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
            GoalPage.index = index;
          });
          // Add button logic here, you can use `activeButtonIndex` to identify the active button.
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(
              color: activeButtonIndex == index
                  ? pPrimapryColor
                  : Colors.grey,
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
                color: activeButtonIndex == index
                    ? pPrimapryColor
                    : Colors.black),
          ),
        ),
      ),
    );
  }
}
