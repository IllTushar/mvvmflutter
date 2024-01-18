import 'package:flutter/material.dart';
import '../colors.dart';

class RoundButton extends StatelessWidget {
  String message;
  final VoidCallback onTap;

  RoundButton({Key? key, required this.message, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 200,
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: CustomColor.blue, borderRadius: BorderRadius.circular(10.0)),
        child: Center(
          child: Center(
              child: Text(
            message,
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
