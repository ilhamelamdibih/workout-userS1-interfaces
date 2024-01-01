import 'package:flutter/material.dart';
import 'package:workout_health_front_end/constant/colors.dart';
import 'package:workout_health_front_end/constant/images.dart';
import 'package:workout_health_front_end/view/chat.view.dart';
import 'package:workout_health_front_end/widgets/simple.card.dart';
import 'package:workout_health_front_end/widgets/text.form.global.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //int _currentIndex = 1;
  TextEditingController _userNameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back) , color: pPrimapryColor,),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return const ChatPage();
                          }));
            },
            icon: const Icon(
              Icons.sms_outlined,
              color: pPrimapryColor,
            ),
          ),
        ],
        centerTitle: true,
        title: Image.asset(logoDark, width: 80),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                right: 10,
                child: Visibility(
                  visible: true, // we can add the conditon we need
                  child: TextButton(
                    onPressed: () {
                      //   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      //   return DietView();
                      // }));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        color: pPrimapryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Text(
                        "Modifier",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Player Image
                
                    Center(
                      child: Hero(
                        //tag: '${player.id}',
                        tag : 1,
                        child: Container(
                          height: 110,
                          width: 110,
                          decoration:  BoxDecoration(
                            border: Border.all(color: pPrimapryColor , width: 2),
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(aucunImage), fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SimpleCard(info: "50 kg", title: "Weight"),
                          SimpleCard(info: "1.61 cm", title: "Taille"),
                          SimpleCard(info: "26 y.o", title: "Age")
                          // SimpleCard(info: "${player.weight} kg", title: "Weight"),
                          // SimpleCard(info: "${player.height} cm", title: "Taille"),
                          // SimpleCard(info: "${player.age} y.o", title: "Age"),
                        ],
                      ),
                    ),
          
                     Container(
                    height:290,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        const SizedBox(height: 20),
                      TextFormGlobal(
                          controller: _userNameController ,
                          text: "userName",
                          textInputType: TextInputType.text,
                          obscure: false,
                          ),
                          const SizedBox(height: 20),
                      TextFormGlobal(
                          controller: _emailController ,
                          text: "email",
                          textInputType: TextInputType.text,
                          obscure: false,
                          ),
                          const SizedBox(height: 20),
                      TextFormGlobal(
                          controller: _passwordController ,
                          text: "password",
                          textInputType: TextInputType.text,
                          obscure: false,
                          ),
                          const SizedBox(height: 20),
                      TextFormGlobal(
                          controller: _passwordController ,
                          text: "Comfirmer password",
                          textInputType: TextInputType.text,
                          obscure: false,
                          ),
                        
                      ],
                    ),
                     ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
