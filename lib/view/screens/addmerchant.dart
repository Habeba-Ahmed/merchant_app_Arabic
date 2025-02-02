import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:merchant/controller/merchant_controller.dart';
// import 'package:merchant/view/widget/auth/custombutton.dart';
import 'package:merchant/view/widget/merchand/customtextformfield.dart';

import '../widget/auth/custombutton.dart';

class AddMerchant extends StatelessWidget {
  const AddMerchant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('اضافه تاجر'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: GetBuilder<MerchantControllerImp>(builder: (controller) {
          return ListView(
          children: [
            CustomTextFormField(
              // icon: icon, 
              hinttext: "اسم التاجر", 
              labeltext: "اسم التاجر", 
              mycontroller: controller.name, 
              valid: (val){
                return val!.isEmpty ? "الرجاء ادخال اسم التاجر" : null;
              }),

            CustomTextFormField(
              // icon: icon, 
              hinttext: "الحساب السابق", 
              labeltext: "الحساب السابق", 
              mycontroller: controller.previousprices, 
              valid: (val){
                return val!.isEmpty ? "الرجاء ادخال الحساب السابق" : null;
              }),

              CustomButton(
                text: "اضافه", onPressed: (){
                  controller.add();
                })
          ],
        );
        },)
      ),
    );
  }
}