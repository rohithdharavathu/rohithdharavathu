import 'package:chat/calculator.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    title: "Calculator",
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    routes: {
      "/" : ((context) => CalculatorScreen()),
    },
  ),
);
