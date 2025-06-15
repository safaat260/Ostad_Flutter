import 'package:flutter/material.dart';
import 'calculator_widget.dart';

class CalculatorHome extends StatefulWidget {
  const CalculatorHome({super.key});

  @override
  State<CalculatorHome> createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: Center(
          child: Text(
            "Calculator App",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 28,
            ),
          ),
        ),
        backgroundColor: Colors.orange,
      ),

      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(20),
              child: Text(
                "343",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Row(
            children: [
              calculator_widget(onClick: () {  }, text: '7',),
              calculator_widget(onClick: () {  }, text: '8',),
              calculator_widget(onClick: () {  }, text: '9',),
              calculator_widget(onClick: () {  }, text: '÷', color: Colors.orange,),
            ],
          ),
          Row(
            children: [
              calculator_widget(onClick: () {  }, text: '4',),
              calculator_widget(onClick: () {  }, text: '5',),
              calculator_widget(onClick: () {  }, text: '6',),
              calculator_widget(onClick: () {  }, text: '*',color: Colors.orange,),

            ],
          ),
          Row(
            children: [
              calculator_widget(onClick: () {  }, text: '1',),
              calculator_widget(onClick: () {  }, text: '2',),
              calculator_widget(onClick: () {  }, text: '3',),
              calculator_widget(onClick: () {  }, text: '-',color: Colors.orange,),

            ],
          ),
          Row(
            children: [
              calculator_widget(onClick: () {  }, text: 'C',color: Colors.red,),
              calculator_widget(onClick: () {  }, text: '0',),
              calculator_widget(onClick: () {  }, text: '=',color: Colors.green,),
              calculator_widget(onClick: () {  }, text: '+',color: Colors.orange,),

            ],
          ),

        ],
      ),
    );
  }
}

