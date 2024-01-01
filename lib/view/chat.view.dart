import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:workout_health_front_end/constant/colors.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Lamdibih ilhame',
            style: TextStyle(color: Colors.white,
            fontSize: 18),
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20 , right: 20, top: 30),
            child: Container(
              height:screenHeight-120,
              child: Column(
                children: [
                   Container(
                      height:screenHeight-240,
                      child: ListView(
                          physics: const BouncingScrollPhysics(),
                          children: [
                            //send message 
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/3),
                    alignment: Alignment.bottomRight,
                    decoration: const BoxDecoration(
                      color: const Color(0xFFECEAEA),
                      borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                         ),
                    ),
                   child: Text(
                    "Hi there, I'm interested in ordering some food for delivery. "
                   ), 
                  ),
                  SizedBox(height: 20,),
                    //send message 
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/3),
                    alignment: Alignment.bottomRight,
                    decoration: const BoxDecoration(
                      color: const Color(0xFFECEAEA),
                      borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                         ),
                    ),
                   child: Text(
                    "Hi there, I'm interested in ordering some food for delivery. "
                   ), 
                  ),
                  SizedBox(height: 20,),
                    //send message 
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/3),
                    alignment: Alignment.bottomRight,
                    decoration: const BoxDecoration(
                      color: const Color(0xFFECEAEA),
                      borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                         ),
                    ),
                   child: Text(
                    "Hi there, I'm interested in ordering some food for delivery. "
                   ), 
                  ),
                  SizedBox(height: 20,),
                    //send message 
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/3),
                    alignment: Alignment.bottomRight,
                    decoration: const BoxDecoration(
                      color: const Color(0xFFECEAEA),
                      borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                         ),
                    ),
                   child: Text(
                    "Hi there, I'm interested in ordering some food for delivery. "
                   ), 
                  ),
                  SizedBox(height: 20,),
                    //send message 
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/3),
                    alignment: Alignment.bottomRight,
                    decoration: const BoxDecoration(
                      color: const Color(0xFFECEAEA),
                      borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                         ),
                    ),
                   child: Text(
                    "Hi there, I'm interested in ordering some food for delivery. "
                   ), 
                  ),
                  SizedBox(height: 20,),
                    //send message 
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/3),
                    alignment: Alignment.bottomRight,
                    decoration: const BoxDecoration(
                      color: const Color(0xFFECEAEA),
                      borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                         ),
                    ),
                   child: Text(
                    "Hi there, I'm interested in ordering some food for delivery. "
                   ), 
                  ),
                  SizedBox(height: 20,),
                  // reseve message
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: MediaQuery.of(context).size.width/3),
                    alignment: Alignment.bottomRight,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 223, 178, 178),
                      borderRadius: BorderRadius.only(
                        bottomRight:Radius.circular(10),
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)
                         ),
                    ),
                   child: Text(
                    "Hi! Thanks for reaching out. What can I get for you?"
                   ), 
                  ),
          
                          ]),
                   ),
                  
                  // 
                 SizedBox(height: 50,),
                 Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                   child: Container(
                    padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Type your message..."
                                ),
                              ),
                            ),
                            IconButton(onPressed: (){}, icon: Icon(Icons.send_outlined,color: pPrimapryColor,))
                          ],
                        ),
                   ),
                 ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}