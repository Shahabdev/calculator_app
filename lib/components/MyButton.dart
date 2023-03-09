import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;
  final Color buttonColor;
  final VoidCallback onpress;
  const MyButton(
      {Key? key,
      required this.name,
      this.buttonColor = const Color(0xffa5a5a5),required this.onpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(shape: BoxShape.circle, color: buttonColor),
            child: Center(
                child: Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
          ),
        ),
      ),
    );
  }
}
