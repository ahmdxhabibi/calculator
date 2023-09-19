import 'package:calculator/theme.dart';
import 'package:flutter/material.dart';

class CalcButton extends StatefulWidget {
  final String textButton;
  final Color btnColor;
  final Color txtColor;
  const CalcButton({
    super.key,
    required this.textButton,
    required this.btnColor,
    this.txtColor = whiteColor,
  });

  @override
  State<CalcButton> createState() => _CalcButtonState();
}

class _CalcButtonState extends State<CalcButton> {
  get btnVal => null;

  buttonPressed(btnVal) {
    String _out = "0";
    String output = "0";
    double num1 = 0;
    double num2 = 0;
    String operand = "";
    if (btnVal == "C") {
      _out = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else if (btnVal == "+" ||
        btnVal == "-" ||
        btnVal == "*" ||
        btnVal == "/") {
      num1 = double.parse(output);
      operand = btnVal;
      _out = "0";
      output = output + btnVal;
    } else if (btnVal == ".") {
      if (_out.contains(".")) {
        print("Already exist");
        return;
      } else {
        _out = _out + btnVal;
      }
    } else if (btnVal == "=") {
      num2 = double.parse(output);
      if (operand == "+") {
        _out = (num2 + num1).toString();
      }
      if (operand == "-") {
        _out = (num1 - num2).toString();
      }
      if (operand == "*") {
        _out = (num2 * num1).toString();
      }
      if (operand == "/") {
        _out = (num1 / num2).toString();
      }
      num1 = 0.0;
      num2 = 0.0;
      //_out = "0";
    } else {
      _out = _out + btnVal;
    }

    setState(() {
      output = double.parse(_out).toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.all(10),
        width: 72,
        height: 72,
        decoration: ShapeDecoration(
            color: widget.btnColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24))),
        child: TextButton(
          onPressed: () => buttonPressed(btnVal),
          child: Text(
            widget.textButton,
            style: mainTextStyle.copyWith(
              fontSize: 32,
              color: widget.txtColor,
            ),
          ),
        ),
      ),
    );
  }
}
