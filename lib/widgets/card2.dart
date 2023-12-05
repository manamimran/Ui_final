import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_final/utils/app_fonts.dart';

import '../utils/app_colors.dart';

class Card2 extends StatelessWidget{
  // Color myColor = Color(0xFF292929);
  Card2({required this.labelText, required this.textEditingController, required this.obscureText});
  final String labelText;
  final bool obscureText;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: AppColors.myColor.withOpacity(1), // Shadow color
              offset: Offset(2, 2), // Offset (x, y)
              // blurRadius: 1, // Blur radius
            ),
          ],
        ),
      child: Padding(padding: EdgeInsets.only(left: 10, top: 15),
        child: TextField(
            obscureText: obscureText ,
            controller: textEditingController,
           style:AppFont.popins( style: TextStyle(color: Colors.grey)),
            decoration: InputDecoration(

              border: InputBorder.none, // Remove the underline
              hintText: labelText, // Optional: Provide a hint text
              hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6)), // Optional: Style for the hint text
            ))),

      );
  }


}