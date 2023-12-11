import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextField1 extends StatelessWidget{
  TextField1({required this.labelText, required this.textEditingController});
  final String labelText;
  Color myColor = Color(0xFF292929);
  TextEditingController textEditingController = TextEditingController();

late double width,height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      // width: 160.0,
      height:height*0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: myColor.withOpacity(1), // Shadow color
            offset: Offset(2, 2), // Offset (x, y)
            // blurRadius: 1, // Blur radius
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10, top: 16),
        child: TextField(
          controller: textEditingController,
          style: TextStyle(color: Colors.grey),
          decoration: InputDecoration(
            border: InputBorder.none, // Remove the underline
            hintText: labelText, // Optional: Provide a hint text
            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6)), // Optional: Style for the hint text
          )),

    ));
  }


}
// child: TextField(
// obscureText: false,
// decoration: InputDecoration(
// border: OutlineInputBorder(
// borderRadius:
// BorderRadius.all(Radius.circular(10.0))),
// labelText: 'First name',
// ),
// ),