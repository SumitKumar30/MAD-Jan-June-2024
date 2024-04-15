import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  const CustomButton({required this.text, required this.onPressed, required this.color,});

  // const CustomButton(
  //     {Key? key,
  //     required this.text,
  //     required this.onPressed,
  //     required this.color})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
      style: TextButton.styleFrom(
          padding: EdgeInsets.all(16),
          elevation: 8,
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
      onPressed: onPressed,
    ));
  }
}
