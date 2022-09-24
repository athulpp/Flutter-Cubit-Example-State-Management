// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bloctimes/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  String? text;
  IconData? icon;
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool? isIcon;
  AppButton(
      {Key? key,
      required this.color,
      required this.backgroundColor,
      required this.size,
      required this.borderColor,
      this.text = 'hi',
      this.icon,
      this.isIcon = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.0),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor),
      child: isIcon == false
          ? Center(
              child: AppText(
              text: text!,
              color: color,
            ))
          : Icon(
              icon,
              color: color,
            ),
    );
  }
}
