import 'package:flutter/material.dart';
import 'package:merchant/data/model/merchantviewmodel.dart';

class CustomListCategories extends StatelessWidget {
  final MerchantVuiewodel merchantModel;
  final void Function()? onpress;
  const CustomListCategories({
    super.key,
    required this.merchantModel,
    required this.onpress,
    
    });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress ,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        height : 90,
        child: Card(
          child: ListTile(
            trailing: Text(merchantModel.merchantName!,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
            // title: Text("${merchantModel.merchantPreviousprices}",style: const TextStyle(fontSize: 20),),
          )
      )),
    );
  }
}