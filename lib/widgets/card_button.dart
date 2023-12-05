import 'package:flutter/material.dart';
import 'package:ui_final/model_class.dart';
import 'package:ui_final/screens/second_screen.dart';
import 'package:ui_final/utils/app_colors.dart';

class CardButton extends StatelessWidget {
  CardButton({required this.labelText, required this.onPressed});
  final String labelText;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 330,
      // height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.myColor2),
      child: GestureDetector(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Center(
            child: Text(
              labelText,
              style: TextStyle(
                color: Colors.white, // Set the text color here
              ),
            ),
          ),
        ),
      ),
    );
  }
}
