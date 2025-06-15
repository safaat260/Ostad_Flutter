import 'package:flutter/material.dart';
import 'calculator_widget.dart';

class CalculatorHome extends StatefulWidget {
  const CalculatorHome({super.key});

  @override
  State<CalculatorHome> createState() => _CalculatorHomeState();
}

class _CalculatorHomeState extends State<CalculatorHome> {
  //parameter
  String _input = "0";
  String _output = "0";
  String _operator = "0";
  double num1 = 0;
  double num2 = 0;

  //function
  void buttonpress(String value){
    print(value);
    setState(() {
      if(value == "C"){
        _output = '0';
        _input = '0';
        _operator = '';
        num1 = 0;
        num2 = 0;
      }


      else if (value == '⌫') {
        if (_input.isNotEmpty && _input != '0') {
          _input = _input.substring(0, _input.length - 1);
          if (_input == "") {
            _input = "0";
          }
          _output = _input;
        }
      }

      else if(value == '='){
         num2 = double.parse(_input);
         if(_operator == '+'){
          _output = (num1+num2).toString();
         }
         else if(_operator == '-'){
           _output = (num1-num2).toString();
         }
         else if(_operator == '*'){
           _output = (num1*num2).toString();
         }
         else if(_operator == '÷'){
           _output = (num2 !=0) ? (num1/num2).toString() : 'Error';
         }

         _input = _output;
      }
      else if(['+', '-','*','÷'].contains(value)){
      num1 = double.parse(_input);
      _operator = value;
      _input = '';
      }

      else {
        // Handle decimal input
        if (value == '.' && _input.contains('.')) {
          return; // Prevent multiple decimals
        }

        if (_input == "0" && value != ".") {
          _input = value;
        } else {
          _input += value;
        }

        _output = _input;
      }


    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: Text(
          "Calculator App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.orange,
      ),

      body: Column(
        children: [
          Text("Developed By Fahim Safaat", style: TextStyle(color: Colors.grey, fontSize: 20),),
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(20),
              //show the inputs
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(_operator.isNotEmpty ? "$num1 $_operator $_input" : _input,
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 24,
                  ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    _output,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Row(
            children: [
              calculator_widget(onClick:()=> buttonpress('C'), text: 'C',color: Colors.red,),
              calculator_widget(onClick: () => buttonpress('⌫'), text: '⌫', color: Colors.orange),
              calculator_widget(onClick:()=> buttonpress('+'), text: '+',color: Colors.orange,),
            ],
          ),

          Row(
            children: [
              calculator_widget(onClick:()=> buttonpress('7'), text: '7',),
              calculator_widget(onClick:()=> buttonpress('8'), text: '8',),
              calculator_widget(onClick:()=> buttonpress('9'), text: '9',),
              calculator_widget(onClick:()=> buttonpress('-'), text: '-', color: Colors.orange,),
            ],
          ),
          Row(
            children: [
              calculator_widget(onClick:()=> buttonpress('4'), text: '4',),
              calculator_widget(onClick:()=> buttonpress('5'), text: '5',),
              calculator_widget(onClick:()=> buttonpress('6'), text: '6',),
              calculator_widget(onClick:()=> buttonpress('*'), text: '*',color: Colors.orange,),

            ],
          ),
          Row(
            children: [
              calculator_widget(onClick:()=> buttonpress('1'), text: '1',),
              calculator_widget(onClick:()=> buttonpress('2'), text: '2',),
              calculator_widget(onClick:()=> buttonpress('3'), text: '3',),
              calculator_widget(onClick:()=> buttonpress("÷"), text: '÷',color: Colors.orange,),

            ],
          ),
          Row(
            children: [
              calculator_widget(onClick:()=> buttonpress('.'), text: '.', color: Colors.grey[800]),
              calculator_widget(onClick:()=> buttonpress('0'), text: '0',),
              calculator_widget(onClick:()=> buttonpress('='), text: '=',color: Colors.green,),


            ],
          ),

        ],
      ),
    );
  }
}

