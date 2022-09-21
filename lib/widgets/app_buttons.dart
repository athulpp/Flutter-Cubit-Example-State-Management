// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/misc/colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  AppButton({
    Key? key,
    required this.color,
    required this.backgroundColor,
    required this.size,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.buttonBackground),
    );
  }
}
