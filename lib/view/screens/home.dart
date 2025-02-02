import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:merchant/core/constant/routes.dart';

import '../../core/constant/imageassets.dart';
import '../widget/home/customlisthome.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الصفحه الرئيسيه'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            GridView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [
                CustomListHome(
                  name: "التجار", 
                  imagename: ImageAssets.merchant, 
                  ontap: (){
                    Get.toNamed(AppRoutes.viewmerchant);
                  }),
                  // CustomListHome(
                  //   name: "المبيعات", 
                  //   imagename: ImageAssets.sells, 
                  //   ontap: (){
                  //   }),
                CustomListHome(
                  name: "اضافه فاتوره تاجر", 
                  imagename: ImageAssets.bill, 
                  ontap: (){
                    Get.toNamed(AppRoutes.bill);
                  }),
              ],
              )
          ],
        ),
      ),  
    );
  }
}