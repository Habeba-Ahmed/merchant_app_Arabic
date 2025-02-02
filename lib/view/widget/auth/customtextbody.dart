// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:flutter/material.dart';

class CustomTextBody extends StatelessWidget {
  String textbody;
  CustomTextBody({super.key,required this.textbody});

  @override
  Widget build(BuildContext context) {
    return Container(
              margin:const EdgeInsets.symmetric(horizontal: 25),
              child: Text(textbody,
              textAlign: TextAlign.center,
              style:Theme.of(context).textTheme.bodyText2
              
              ));
            
  }
}