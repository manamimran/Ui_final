import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:ui_final/screens/first_screen.dart';
import 'package:ui_final/screens/third_screen.dart';
import 'package:ui_final/utils/app_colors.dart';

import '../utils/app_fonts.dart';
import '../widgets/custom_row.dart';
class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  double percent = 0.3;
  // Initial percentage value
  Future<void> updatePercentage() async {
    // Update the percentage value, triggering a rebuild
    setState(() {
      percent = 0.5; // Change this to any desired percentage value
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Sinking Funds",
          style: TextStyle(color: Colors.white),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FirstScreen(),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Using Divider
            Divider(
              color: AppColors.myColor,
              height: 5,
              thickness: 1,
            ),
            CustomRow(
                txt: 'Add Funds'), //add a custom row WIdget named as AddCard
            SizedBox(height: 20),
            Column(
              children: [
                option_card(
                    //add a custom WIdget named as OptionCard
                    "Christmas", "Goal:", '\$3000', "Duration",
                    "6 months", "Monthly Deposit", '\$500',
                    25),
                SizedBox(height: 8),
                option_card("Christmas", "Goal:", '\$3000', "Duration", "6 months",
                    "Monthly Deposit", '\$500', 25),
                SizedBox(height: 8),
                option_card("Car Repair", "Goal:", '\$3000', "Duration",
                    "6 months", "Monthly Deposit", '\$500', 25),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget option_card(String labelText, String txt1, String txt2, String txt3,
      String txt4, String txt5, String txt6, double fontsize) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.myColor,
      ),
      child: Slidable(
        endActionPane: ActionPane(
          motion: ScrollMotion(),
          children: [
            SlidableAction(
                borderRadius: BorderRadius.circular(10),
                flex: 2,
                onPressed: ((context) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdScreen(),
                    ),
                  );
                }),
                backgroundColor: Colors.green,
                icon: Icons.add),
            SizedBox(width: 5),
            SlidableAction(
                borderRadius: BorderRadius.circular(10),
                flex: 2,
                onPressed: ((context) {
                  updatePercentage();
                }),
                backgroundColor: Colors.green,
                icon: Icons.update),
            SizedBox(width: 5),
            SlidableAction(
                borderRadius: BorderRadius.circular(10),
                flex: 2,
                onPressed: ((context) {
                  //Action we want to perform
                }),
                backgroundColor: Colors.red,
                icon: Icons.delete),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Existing Column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      labelText,
                      style: AppFont.popins(
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Divider(
                        color: Colors.black, // Set the color of the divider
                        height: 10, // Set the height of the divider
                        thickness: 1, // Set the thickness of the divider
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(txt1, style: AppFont.popins(style: TextStyle(color: Colors.white))),
                      Text(txt2, style: AppFont.popins(style: TextStyle(color: Colors.white))),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(txt3,style: AppFont.popins(style: TextStyle(color: Colors.white))),
                      Text(txt4, style: AppFont.popins(style: TextStyle(color: Colors.white))),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(txt5, style: AppFont.popins(style: TextStyle(color: Colors.white))),
                      Text(txt6, style: AppFont.popins(style: TextStyle(color: Colors.white))),
                    ],
                  ),
                ],
              ),
            ),
            // Additional Column
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircularPercentIndicator(
                    radius: 40,
                    lineWidth: 5.0,
                    percent: percent,
                    center: Text(
                      "${(percent * 100).toInt()}%", // Display percentage text
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    progressColor: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
