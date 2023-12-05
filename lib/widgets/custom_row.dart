import 'package:flutter/cupertino.dart';
import 'package:ui_final/utils/app_colors.dart';
import 'package:ui_final/utils/app_fonts.dart';

class CustomRow extends StatelessWidget {
  CustomRow({required this.txt});

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(top: 15, right: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/images/Plus.png', height: 40),
              Text(
                txt,
                style: AppFont.popins(
                    style: TextStyle(
                        color: AppColors.myColor2,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
