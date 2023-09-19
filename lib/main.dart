import 'package:calculator/theme.dart';
import 'package:calculator/widget/button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ),
            child: Text(
              '0',
              style: mainTextStyle.copyWith(
                fontSize: 96,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const Expanded(
            child: Divider(),
          ),
          const Column(
            children: [
              Row(
                children: [
                  CalcButton(
                    textButton: 'C',
                    btnColor: greyColor,
                    txtColor: blackColor,
                  ),
                  CalcButton(
                    textButton: '+/-',
                    btnColor: greyColor,
                    txtColor: blackColor,
                  ),
                  CalcButton(
                    textButton: '%',
                    btnColor: greyColor,
                    txtColor: blackColor,
                  ),
                  CalcButton(
                    textButton: '÷',
                    btnColor: purpleColor,
                  ),
                ],
              ),
              Row(
                children: [
                  CalcButton(
                    textButton: '7',
                    btnColor: purpleColor,
                  ),
                  CalcButton(
                    textButton: '8',
                    btnColor: purpleColor,
                  ),
                  CalcButton(
                    textButton: '9',
                    btnColor: purpleColor,
                  ),
                  CalcButton(
                    textButton: '×',
                    btnColor: purpleColor,
                  ),
                ],
              ),
              Row(
                children: [
                  CalcButton(
                    textButton: '4',
                    btnColor: purpleColor,
                  ),
                  CalcButton(
                    textButton: '5',
                    btnColor: purpleColor,
                  ),
                  CalcButton(
                    textButton: '6',
                    btnColor: purpleColor,
                  ),
                  CalcButton(
                    textButton: '-',
                    btnColor: purpleColor,
                  ),
                ],
              ),
              Row(
                children: [
                  CalcButton(
                    textButton: '1',
                    btnColor: purpleColor,
                  ),
                  CalcButton(
                    textButton: '2',
                    btnColor: purpleColor,
                  ),
                  CalcButton(
                    textButton: '3',
                    btnColor: purpleColor,
                  ),
                  CalcButton(
                    textButton: '+',
                    btnColor: purpleColor,
                  ),
                ],
              ),
              Row(
                children: [
                  CalcButton(
                    textButton: '.',
                    btnColor: purpleColor,
                  ),
                  CalcButton(
                    textButton: '0',
                    btnColor: purpleColor,
                  ),
                  CalcButton(
                    textButton: '<-',
                    btnColor: purpleColor,
                  ),
                  CalcButton(
                    textButton: '=',
                    btnColor: purpleColor,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
