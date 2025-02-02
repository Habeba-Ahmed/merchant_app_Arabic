// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButtonLanguage extends StatelessWidget {
  String textLang;
  void Function()? onPressed;
  CustomButtonLanguage({super.key,required this.onPressed,required this.textLang});

  @override
  Widget build(BuildContext context) {
    return Container(
      width : double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColor.primaryColor,
      child: Text(textLang),),
    );
  }
}