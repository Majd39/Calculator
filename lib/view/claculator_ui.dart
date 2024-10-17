import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/calculator_controller.dart';
import '../customWidget/custom_button.dart';

// Main Page Layout
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});
  final CalculatorController calculatorController = Get.put(CalculatorController());

  final String title;
  Color neonGreen = const Color(0xFF39FF14);

  @override
  Widget build(BuildContext context) {
    // Make the app responsive using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonSize = screenWidth / 5.5; // Dynamic button size

    return Scaffold(
      backgroundColor: Colors.teal,
      body:
        Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.teal, Colors.black87], // Gradient from teal to dark teal
    ),

    ),
   child:    Column(
        children: [
          const SizedBox(height: 200),
          // Top Section: Result display
          Obx(()=>Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.black54,
            child: Text(
              calculatorController.currentInput.value, // This will be updated with input/output
              style: TextStyle(
                color: neonGreen,
                fontSize: 60, // Large font for results
              ),
              textAlign: TextAlign.right, // Align to the right
            ),
          ),),
          const SizedBox(height: 20),
          // Calculator Buttons
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              padding: const EdgeInsets.all(8),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                // First row
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.grey.shade800,
                  text: "C",
                  fontColor: neonGreen,
                  onTap: () {calculatorController.onButtonPressed("C");},
                ),
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.white,
                  text: "÷",
                  fontColor: neonGreen,
                  onTap: () {
    calculatorController.setOperator('÷');
    // calculatorController.onButtonPressed('='); // to perform the division immediately after setting
    // calculatorController.isNewInput = true;

     },
                ),
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.white,
                  text: "×",
                  fontColor: neonGreen,
                  onTap: () {
    calculatorController.setOperator('×');
    // calculatorController.onButtonPressed('='); // to perform the multiplication  immediately after setting
    // calculatorController.isNewInput = true;
     },
                ),
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.white,
                  text: "del",
                  fontColor: neonGreen,
                  onTap: () {calculatorController.onButtonPressed("del");},
                ),
                // Second row
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.black,
                  text: "7",
                  fontColor: neonGreen,
                  onTap: () {calculatorController.onButtonPressed("7");},
                ),
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.black,
                  text: "8",
                  fontColor: neonGreen,
                  onTap: () {calculatorController.onButtonPressed("8");},
                ),
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.black,
                  text: "9",
                  fontColor: neonGreen,
                  onTap: () {calculatorController.onButtonPressed("9");},
                ),
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.white,
                  text: "-",
                  fontColor: neonGreen,
                  onTap: () {
    calculatorController.setOperator('-');
    // calculatorController.onButtonPressed('=');// to perform the subtraction immediately after setting
    // calculatorController.isNewInput = true;
    },
                ),
                // Third row
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.black,
                  text: "4",
                  fontColor: neonGreen,
                  onTap: () {calculatorController.onButtonPressed("4");},
                ),
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.black,
                  text: "5",
                  fontColor: neonGreen,
                  onTap: () {calculatorController.onButtonPressed("5");},
                ),
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.black,
                  text: "6",
                  fontColor: neonGreen,
                  onTap: () {calculatorController.onButtonPressed("6");},
                ),
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.white,
                  text: "+",
                  fontColor: neonGreen,
                  onTap: () {
    calculatorController.setOperator('+');
    // calculatorController.onButtonPressed('='); // to perform the addition immediately after setting
    // calculatorController.isNewInput = true;
     },
                ),
                // Fourth row
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.black,
                  text: "1",
                  fontColor: neonGreen,
                  onTap: () {calculatorController.onButtonPressed("1");},
                ),
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.black,
                  text: "2",
                  fontColor: neonGreen,
                  onTap: () {calculatorController.onButtonPressed("2");},
                ),
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.black,
                  text: "3",
                  fontColor: neonGreen,
                  onTap: () {calculatorController.onButtonPressed("3");},
                ),
                GridTile(
                  child: CustomButton(
                    width: buttonSize,
                    height: buttonSize * 2, // Double the height for the equal button
                    color: Colors.greenAccent.shade700, // Make '=' button slightly distinct
                    text: "=",
                    fontColor: Colors.black,
                    onTap: () {calculatorController.onButtonPressed("=");},
                  ),
                ),

                // Fifth row
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.white,
                  text: "%",
                  fontColor: neonGreen,
                  onTap: () {
                    calculatorController.setOperator('%');
    // calculatorController.onButtonPressed('='); // to perform the modulo operation immediately after setting
     },
                ),
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.black,
                  text: "0",
                  fontColor: neonGreen,
                  onTap: () {calculatorController.onButtonPressed("0");},
                ),
                CustomButton(
                  width: buttonSize,
                  height: buttonSize,
                  color: Colors.black,
                  text: ".",
                  fontColor: neonGreen,
                  onTap: () {calculatorController.onButtonPressed(".");},
                ),
              ],
            ),
          ),
        ],
      ),),
    );
  }
}