import 'package:flutter/material.dart';
import 'package:workout_health_front_end/constant/colors.dart';
import 'package:workout_health_front_end/view/informationsAndGoal/you2.dart';
import 'package:workout_health_front_end/widgets/material.button.global.dart';
import 'package:workout_health_front_end/widgets/text.form.global.dart';

class YouPage extends StatefulWidget {
  //final Map<String, dynamic> body;
  static int gender = -1;
  static String country = "";
  YouPage();
  //YouPage({required this.body});

  @override
  _YouPageState createState() => _YouPageState();
}

class _YouPageState extends State<YouPage> {
  int activeButtonIndex = -1; // No active button at the beginning
  bool isFocused = false;
  TextEditingController _textEditingController = TextEditingController();
  FocusNode _focusNode = FocusNode();

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
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
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
                            'Please select which sex we should use to calculate your calorie needs :',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                              height: 1.8,
                            ),
                          ),
                          SizedBox(height: 7),
                          Text('Which one should i choose?',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey))
                        ],
                      ),
                      const SizedBox(height: 20),
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ActiveButtonExample(),
                            const SizedBox(height: 20),
                            const Text(
                              'How old are you ?',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(height: 20),
                            TextFormGlobal(
                                controller: _textEditingController,
                                text: "age",
                                textInputType: TextInputType.number,
                                obscure: false),
                            const Padding(
                              padding:
                                  EdgeInsets.only(top: 0, left: 15.0, right: 0),
                              child: Text(
                                  'We use this to calculate an accurate calorie goal',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 190),
                  MaterialButtonGlobal(
                      text: "Next",
                      textColor: Colors.white,
                      buttonColor: pPrimapryColor,
                      onPressed: () {
                        // widget.body['gender']=YouPage.gender;
                        // widget.body['age']=_textEditingController.text;
                        // widget.body['country']=YouPage.country;

                        // print(widget.body);
                        //   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        //   return YouPage2(body:widget.body);
                        // }));

                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return YouPage2();
                        }));
                      }),
                ],
              ),
            ),
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
    return Row(
      children: [
        Expanded(
          child: buildButton(0, 'Male'),
        ), // Add spacing between buttons (you can adjust the value as needed)
        Expanded(
          child: buildButton(1, 'Female'),
        ),
      ],
    );
  }

  Widget buildButton(int index, String text) {
    return Container(
      height: 50,
      child: TextButton(
        onPressed: () {
          setState(() {
            activeButtonIndex = index;
            YouPage.gender = index;
          });
          // Add button logic here, you can use `activeButtonIndex` to identify the active button.
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: activeButtonIndex == index ? pPrimapryColor : Colors.grey,
              width: activeButtonIndex == index ? 2.0 : 1.0,
            ),
          ),
          alignment: Alignment.center,
          padding: EdgeInsets.zero, // Remove padding inside the button
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 14,
              color: activeButtonIndex == index ? pPrimapryColor : Colors.grey),
        ),
      ),
    );
  }
}
