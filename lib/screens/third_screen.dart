import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:ui_final/screens/second_screen.dart';
import 'package:ui_final/utils/app_colors.dart';
import 'package:ui_final/utils/app_fonts.dart';

import '../widgets/custom_row.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Vacation",
            style: AppFont.popins(style: TextStyle(color: Colors.white)),
          ),
          leading: Padding(
            padding: EdgeInsets.only(left: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/arrow_image.png',
                height: 40,
              ),
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              DetailWidget(),
              CustomList(),
            ],
            //custom widget to show list named as CustomList
          ),
        ));
  }

  Widget CustomList() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Divider(
              color: AppColors.myColor, // Set the color of the divider
              height: 5, // Set the height of the divider
              thickness: 1, // Set the thickness of the divider
            ),
          ),
          //custom widget for showing details named as Detail widget
          CustomRow(
              txt: 'Add Deposit'), //custom widget for row named as CustomRow
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Divider(
              color: AppColors.myColor, // Set the color of the divider
              height: 5, // Set the height of the divider
              thickness: 1, // Set the thickness of the divider
            ),
          ),
          Container(
            child: Column(
              children: [
                Column(
                  children: [
                    CustomRow2(
                        'SEP 2022'), //custom widget for another row named as Custom Row2
                  ],
                ),
                Divider(
                  color: AppColors.myColor, // Set the color of the divider
                  height: 5, // Set the height of the divider
                  thickness: 1, // Set the thickness of the divider
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Column(
                  children: [
                    CustomRow2(
                        'AUG 2022'), //custom widget for another row named as Custom Row2
                  ],
                ),
                Divider(
                  color: AppColors.myColor, // Set the color of the divider
                  height: 5, // Set the height of the divider
                  thickness: 1, // Set the thickness of the divider
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Column(
                  children: [
                    CustomRow2(
                        'JUL 2022'), //custom widget for another row named as Custom Row2
                  ],
                ),
                Divider(
                  color: AppColors.myColor, // Set the color of the divider
                  height: 5, // Set the height of the divider
                  thickness: 1, // Set the thickness of the divider
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Column(
                  children: [
                    CustomRow2(
                        'JUN 2022'), //custom widget for another row named as Custom Row2
                  ],
                ),
                Divider(
                  color: AppColors.myColor, // Set the color of the divider
                  height: 5, // Set the height of the divider
                  thickness: 1, // Set the thickness of the divider
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Column(
                  children: [
                    CustomRow2(
                        'MAY 2022'), //custom widget for another row named as Custom Row2
                  ],
                ),
                Divider(
                  color: AppColors.myColor, // Set the color of the divider
                  height: 5, // Set the height of the divider
                  thickness: 1, // Set the thickness of the divider
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Column(
                  children: [
                    CustomRow2(
                        'APR 2022'), //custom widget for another row named as Custom Row2
                  ],
                ),
                Divider(
                  color: AppColors.myColor, // Set the color of the divider
                  height: 5, // Set the height of the divider
                  thickness: 1, // Set the thickness of the divider
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget DetailWidget() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.myColor,
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'GOAL',
                 style:AppFont.popins( style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                 )),
                Text(
                  '\$5000',
                 style:AppFont.popins( style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                 ) ),
              ],
            ),
          ),
          Divider(
            color: Colors.black, // Set the color of the divider
            height: 5, // Set the height of the divider
            thickness: 1, // Set the thickness of the divider
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'TOTAL MONTHS',
               style:AppFont.popins( style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
               )),
              Text(
                '15',
                style:AppFont.popins(style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'MONTHLY DEPOSIT',
                style: AppFont.popins(style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                )),
              Text(
                '\$300',
                style:AppFont.popins(style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: LinearPercentIndicator(
              barRadius: Radius.circular(20.0),
              lineHeight: 25.0,
              percent: 0.6,
              progressColor: Colors.green,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'REMAINING AMOUNT',
               style:  AppFont.popins( style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
               )),
              Text(
                '\$3200',
                style:AppFont.popins(style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'REMAINING MONTHS',
           style: AppFont.popins(style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
              ),
              Text(
                '0',
                style: AppFont.popins(style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
              ),
            ],
          ),
          SizedBox(height: 15)
        ],
      ),
    );
  }

  Widget CustomRow2(String txt) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(txt,
         style: AppFont.popins (style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold))),
          SizedBox(width: 40),
          Column(
            children: [
              Text('AMOUNT',
                  style: AppFont.popins(
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold))),
              Text('\$300', style: TextStyle(color: Colors.grey, fontSize: 12))
            ],
          ),
          Column(
            children: [
              Text('DATE',
                  style: AppFont.popins(
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold))),
              Text('05-09-2022',
                  style: TextStyle(color: Colors.grey, fontSize: 12))
            ],
          ),
          Column(
            children: [
              Text('TIME',
                  style: AppFont.popins(
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold))),
              Text('09:55 pm',
                  style: AppFont.popins(
                      style: TextStyle(color: Colors.grey, fontSize: 12)))
            ],
          ),
        ],
      ),
    );
  }
}
