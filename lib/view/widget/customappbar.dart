// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../core/constant/color.dart';

class CustomAppBar extends StatelessWidget {
  String hinttext;
  void Function()? notificationonPressed;
  void Function()? searchonPressed;
  void Function(String)? onChanged;
  TextEditingController? myController;

  CustomAppBar({
    super.key,
    required this.hinttext,
    required this.notificationonPressed,
    required this.searchonPressed,
    required this.onChanged,
    required this.myController,
    });

  @override
  Widget build(BuildContext context) {
  return 
  Container(
    margin: const EdgeInsets.only(top : 10),
    child: Row(
    children: [
      Expanded(
        child: TextFormField(
          controller: myController,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hinttext,
            prefixIcon: IconButton(
              icon: const Icon(Icons.search), 
              onPressed: searchonPressed),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
              ),
              filled: true,
              fillColor: Colors.grey[200]
          ),
        ),
      ),
      const SizedBox(width : 20,),
      SizedBox(child: IconButton(
        onPressed: notificationonPressed, 
        icon: const Icon(Icons.add_alert_outlined),iconSize: 25,color: AppColor.grey,),)
    ],
    ),
);
              
  }
}