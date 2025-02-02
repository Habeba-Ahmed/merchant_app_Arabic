import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:merchant/core/constant/color.dart';
import '../../controller/merchantview_controller.dart';

class MerchantView extends GetView<MerchantViewControllerImp> {
  const MerchantView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MerchantViewControllerImp());
    int? totalmoney;
    return GetBuilder<MerchantViewControllerImp>(builder: (controller){
      return  Scaffold(
      appBar: AppBar(title: Text(controller.name)),
      body: Container(
        padding: const EdgeInsets.all(15) ,
        child:ListView(children: [
          Column(
              children: [
                Table(
                  border: TableBorder.all(),
                  children: [
                    const TableRow(
                          children: [
                            Text("التاريخ",textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15),),
                            Text("الصنف",textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15),),
                            Text("الكميه (متر)",textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15)),
                            Text("سعر المتر",textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15)),
                            Text("السعر الكلي",textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15)),
                            Text("المدفوع",textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15)),
                          ]
                        ),

                        ...List.generate( 
                          controller.data.length, 
                          (index){
                            totalmoney=controller.data[index].totalmoney;
                          return TableRow(
                            
                          children: [
                            Text("${controller.data[index].billDatetime}",textAlign: TextAlign.center,style: const TextStyle(fontSize : 11,fontWeight: FontWeight.bold),),
                            Text("${controller.data[index].billCategory}",textAlign: TextAlign.center,),
                            Text("${controller.data[index].billTotalmeters}",textAlign: TextAlign.center,),
                            Text(controller.data[index].billCostmeter!.toStringAsFixed(2),textAlign: TextAlign.center,),                        
                            Text(controller.data[index].billtotalmoney!.toStringAsFixed(2),textAlign: TextAlign.center,),                        
                            Text(controller.data[index].billPaidmoney!.toStringAsFixed(2),textAlign: TextAlign.center,),                        
                          ]
                        );
                        })
                  ],
                ),
                const Divider(thickness: 0.5,),
                const SizedBox(height : 20,),
                Container(
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("$totalmoney",textAlign: TextAlign.right,style: const TextStyle(color: AppColor.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      const Text(" المديونيه",textAlign: TextAlign.end,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 25),),
                  ]),
                )
              ],
            )
        ])
      ),
    );
    });
  }
}