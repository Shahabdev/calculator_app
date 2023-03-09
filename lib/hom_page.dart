import 'package:calculator_chapt8/components/MyButton.dart';
import 'package:flutter/material.dart';
import 'package:calculator_chapt8/constant_File.dart';
import 'package:math_expressions/math_expressions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var userinput = "";
  var answer = '';
  void equalPress() {
    Parser p = Parser();
    Expression expression = p.parse(userinput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 8),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        userinput.toString(),
                        style: TextStyle(color: Colors.white, fontSize:30,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(answer.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          MyButton(
                            name: 'AC',
                            onpress: () {
                              setState(() {
                                userinput = '';
                                answer = '';
                              });
                            },
                          ),
                          MyButton(
                              name: '+/-',
                              onpress: () {
                                userinput += '+/-';
                                setState(() {});
                              }),
                          MyButton(
                              name: '%',
                              onpress: () {
                                userinput += '%';
                                setState(() {});
                              }),
                          MyButton(
                            name: '/',
                            onpress: () {
                              userinput += '/';
                              setState(() {});
                            },
                            buttonColor: Color(0xffffa00a),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                              name: '7',
                              onpress: () {
                                userinput += '7';
                                setState(() {});
                              }),
                          MyButton(
                              name: '8',
                              onpress: () {
                                userinput += '8';
                                setState(() {});
                              }),
                          MyButton(
                              name: '9',
                              onpress: () {
                                userinput += '9';
                                setState(() {});
                              }),
                          MyButton(
                            name: 'x',
                            onpress: () {
                              userinput += '*';
                              setState(() {});
                            },
                            buttonColor: Color(0xffffa00a),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                              name: '4',
                              onpress: () {
                                userinput += '4';
                                setState(() {});
                              }),
                          MyButton(
                              name: '5',
                              onpress: () {
                                userinput += '5';
                                setState(() {});
                              }),
                          MyButton(
                              name: '6',
                              onpress: () {
                                userinput += '6';
                                setState(() {});
                              }),
                          MyButton(
                            name: '-',
                            onpress: () {
                              userinput += '-';
                              setState(() {});
                            },
                            buttonColor: Color(0xffffa00a),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                              name: '1',
                              onpress: () {
                                userinput += '1';
                                setState(() {});
                              }),
                          MyButton(
                              name: '2',
                              onpress: () {
                                userinput += '2';
                                setState(() {});
                              }),
                          MyButton(
                              name: '3',
                              onpress: () {
                                userinput += '3';
                                setState(() {});
                              }),
                          MyButton(
                            name: '+',
                            onpress: () {
                              userinput += '+';
                              setState(() {});
                            },
                            buttonColor: Color(0xffffa00a),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(
                              name: '0',
                              onpress: () {
                                userinput += '0';
                                setState(() {});
                              }),
                          MyButton(
                              name: '.',
                              onpress: () {
                                userinput += '.';
                                setState(() {});
                              }),
                          MyButton(
                              name: 'DEL',
                              onpress: () {
                                userinput =
                                    userinput.substring(0, userinput.length - 1);
                                setState(() {});
                              }),
                          MyButton(
                            name: '=',
                            onpress: () {
                              equalPress();
                              setState(() {});
                            },
                            buttonColor: Color(0xffffa00a),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
