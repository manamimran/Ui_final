
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ui_final/model_class.dart';
import 'package:ui_final/screens/second_screen.dart';
import 'package:ui_final/utils/app_fonts.dart';
import 'package:ui_final/widgets/card1.dart';
import 'package:ui_final/widgets/card2.dart';
import 'package:ui_final/widgets/card_button.dart';

class FirstScreen extends StatefulWidget {
  // FirstScreen({required this.modelClass});
  // late ModelClass modelClass;

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  var myColor = Color(0xFFED3237);
  var first_controller = TextEditingController();
  var last_controller = TextEditingController();
  var email_controller = TextEditingController();
  var phone_controller = TextEditingController();
  var pass_controller = TextEditingController();
  var confirm_pass_controller = TextEditingController();
  final modelClass = ModelClass;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Image.asset(
            'assets/images/arrow_image.png',
            height: 40,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Image(
                          image: AssetImage('assets/images/ui_logo.png'))),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Hello,',
                      style: AppFont.popins(style: TextStyle(
                          color: myColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 40))),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Signup to get started!',
                      style: AppFont.popins(style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40))),
                ),
              ]),
              Row(
                children: [
                  Expanded(
                    child: Card1(
                      textEditingController: first_controller,
                      labelText: "First name",
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Card1(
                      textEditingController: last_controller,
                      labelText: "Last name",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Card2(
                  textEditingController: email_controller,
                  obscureText: false,
                  labelText: "Email"),
              SizedBox(height: 10),
              Card2(
                  textEditingController: phone_controller,
                  obscureText: false,
                  labelText: 'Phone'),
              SizedBox(height: 10),
              Card2(
                  textEditingController: pass_controller,
                  obscureText: true,
                  labelText: "Password"),
              SizedBox(height: 10),
              Card2(
                  textEditingController: confirm_pass_controller,
                  obscureText: true,
                  labelText: "Confirm Password"),
              SizedBox(height: 10),
              CardButton(
                labelText: "Sign Up",
                onPressed: () async {

                  try {
                    final firestoreInstance = FirebaseFirestore.instance;
                    var doc =  await firestoreInstance         //make a variable to get its id
                        .collection('UserData')
                        .doc();

                    var userModel =  ModelClass(id: doc.id,
                            firstname: first_controller.text,
                            lastname: last_controller.text,
                            email: email_controller.text,
                            phone: phone_controller.text,
                            password: pass_controller.text,
                            confirmpassword: confirm_pass_controller.text);      //store id into doc variable to set the id

                    print('data saved');
                    doc.set(userModel.toMap());
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(),
                      ),
                    );

                  } catch (e) {
                    print("Error: $e");
                    // Show a SnackBar with the error message
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            "Error: Something went wrong : SignUp failed"),
                      ),
                    );
                  }
                },
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }

}
// Padding(
//   padding: EdgeInsets.only(left: 14),
//   child: Row(
//     children: [
//       Card1(
//         labelText: "First name",
//       ),
//       SizedBox(width: 10),
//       Card1(
//         labelText: "Last name",
//       ),
//     ],
//   ),
// ),
// Column(
//   children: [
//     SizedBox(height: 10),
//     Center(
//         child: Card2(
//       labelText: "Email",
//     )),
//     SizedBox(height: 10),
//     Center(
//         child: Card2(
//       labelText: 'Phone',
//     )),
//     SizedBox(height: 10),
//     Center(
//         child: Card2(
//       labelText: "Password",
//     )),
//     SizedBox(height: 10),
//     Center(
//         child: Card2(
//       labelText: "Confirm Password",
//     )),
//     SizedBox(height: 10),
//     Center(child: CardButton(labelText: "Sign Up")),
//   ],
// )
