// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:merchant/core/constant/color.dart';
import 'package:merchant/core/constant/routes.dart';
import 'package:merchant/data/model/merchantviewmodel.dart';
import '../../controller/merchant_controller.dart';
import '../widget/merchand/customlistmerchant.dart';

class Merchant extends StatelessWidget {
  const Merchant({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MerchantControllerImp());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoutes.addmerchant);
        },
        backgroundColor: AppColor.fourthColor,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('التجار'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child:GetBuilder<MerchantControllerImp>(builder: (controller){
          return  ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context,i){
            return CustomListCategories(
              merchantModel: MerchantVuiewodel.fromJson(controller.data[i])
              ,onpress: () {
                controller.goToMerchantDetails(
                  MerchantVuiewodel.fromJson(controller.data[i]),
                  MerchantVuiewodel.fromJson(controller.data[i]).merchantName,
                  // MerchantModel.fromJson(controller.data[i]).totalmoney!,
                  );
              },
              );
          },);
        })
      ),
    );
  }
}