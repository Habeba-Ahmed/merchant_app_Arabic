// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';

class CustomTextFormField extends StatelessWidget {
  // IconData? icon;
  String hinttext;
  String labeltext;
  TextEditingController mycontroller;
  String? Function(String?) ?valid;
  var keyboardtype;

  CustomTextFormField({
    super.key,
    this.keyboardtype,
    // required this.icon,
    required this.hinttext,
    required this.labeltext,
    required this.mycontroller,
    required this.valid,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: TextFormField(
        keyboardType:keyboardtype ,
        controller: mycontroller,
        validator: valid,
        decoration:  InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(vertical: 7,horizontal: 23),
          labelText: labeltext,
          hintStyle: Theme.of(context).textTheme.bodyText2,
          // labelStyle: TextStyle(),
          // suffixIcon: Icon(icon),
          focusColor: AppColor.grey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            
          ),
          hintText: hinttext
          ),
      ),
    );
  }
}