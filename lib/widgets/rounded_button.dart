import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  RoundedButton({
    required this.btnName,
    this.bgColor = Colors.blue,
    this.textStyle,
    this.icon,
    this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: ElevatedButton(
        onPressed: callBack,
        style: ElevatedButton.styleFrom(
          shadowColor: bgColor,
          backgroundColor: bgColor,
        ),
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon!,
                  SizedBox(width: 11),
                  Text(btnName, style: textStyle),
                ],
              )
            : Text(btnName, style: textStyle),
      ),
    );
  }
}
