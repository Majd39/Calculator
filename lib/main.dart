import 'package:calculator_x/view/claculator_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(57,255, 20, 1.0)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(title: 'CALCULATORX'),
    );
  }
}


