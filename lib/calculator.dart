import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:chat/button_values.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
      bottom: false,
      child:Column(
        children: [
          //output
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                child: Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(36.0),
                  child: Text(
                      "0000000000000000000000",
                      style:const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        ),
                      textAlign: TextAlign.end,
                  ),
                ),
              ),
            ),
            Wrap(
              children: Btn.buttonValues
                  .map(
                    (value) => SizedBox(
                        width: screenSize.width/4,
                        height: value == Btn.add?screenSize.width/3: screenSize.width/5,
                        child: buildButton(value)),
                  ).toList(),
            )

             //input

        ],
      ),


    ),
    );
  }
  Widget buildButton(value){
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Material(
        color: getColor(value),
        clipBehavior: Clip.hardEdge,
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(100), borderSide: const BorderSide( color: Colors.white24) ),
        child: InkWell(
            onTap: () {},
            child: Center(
                child: Text(value),
            ),
        ),
      ),
    );
  }
  Color getColor(value) {
    return  [Btn.del, Btn.clr].contains(value)?Colors.blueGrey:[Btn.per,Btn.multiply,Btn.add,Btn.subtract,Btn.divide,Btn.calculate].contains(value)?Colors.orange:Colors.black87;
  }
}



