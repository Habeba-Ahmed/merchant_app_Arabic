// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:flutter/material.dart';

class CustomTextTitle extends StatelessWidget {
  String texttitle;
  CustomTextTitle({super.key,required this.texttitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      texttitle,
      textAlign: TextAlign.center,
      style:Theme.of(context).textTheme.headline2);
  }
}