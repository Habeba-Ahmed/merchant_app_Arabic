


import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
// import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:merchant/core/constant/routes.dart';
import 'package:merchant/core/services/myservices.dart';
import 'package:merchant/data/datasource/remote/billdata.dart';
import 'package:merchant/data/datasource/remote/merchantdata.dart';
import 'package:merchant/data/model/merchantmodel.dart';
import '../core/class/statusrequest.dart';
import '../core/function/handillingdata.dart';

abstract class BillController extends GetxController{
// getData();x`x  
add();
}

class BillControllerImp extends BillController{
BillData billData=BillData(Get.find());
MerchantData merchantdata=MerchantData(Get.find());

MerchantModel? merchantmodel;
late StatusRequest statusrequest;
MyServices myServices=MyServices();

String? merchantid;
late TextEditingController paidmoney;
late TextEditingController totalmeter;
late TextEditingController costmeter;
late TextEditingController category;
DateTime now=DateTime.now();
late String formattedDate;
// DateTime datetime =DateTime.now();


  final List data = [];
Map<String, dynamic> merchantDataMap = {};


  getMerchant() async{
    data.clear();
    statusrequest=StatusRequest.loading;
    var response=await merchantdata.getData(
      "1"
      // myServices.sharedPreferance.getString("id")!
    );
    statusrequest=handillingData(response);
    if(StatusRequest.success==statusrequest){
      update();
      if(response['status']=="success"){
        data.addAll(response['data']);
          for (var merchant in data) {
            merchantDataMap["${merchant['merchant_name']}"]=merchant['merchant_id'];
  }
      } 
      else{
        statusrequest= StatusRequest.failur;
      }
    }
  }


  @override
  add()async{
    Map data={
      "merchantid":merchantid,
      "paidmoney":paidmoney.text,
      "totalmeters":totalmeter.text,
      "costmeter":costmeter.text,
      "category":category.text,
      "billdatetime":formattedDate,
    };
    statusrequest=StatusRequest.loading;
    var response=await billData.addData(
      data,
    );
    statusrequest=handillingData(response);
    if(StatusRequest.success==statusrequest){
      update();
      if(response['status']=="success"){
        // getData();
        Get.offAllNamed(AppRoutes.home,arguments: {
        });
      } 
      else{
        statusrequest= StatusRequest.failur;
      }
    }
  }

getdate(context){
  DatePicker.showDatePicker(context,
    showTitleActions: true,
    minTime: DateTime(2000, 1, 1),
    maxTime: DateTime(3000, 1, 1), onChanged: (date) {
  }, onConfirm: (date) {
  formattedDate=DateFormat('yyyy-MM-dd').format(date);
  update();
  }, currentTime: now, locale: LocaleType.ar);
}
  
  @override
  void onInit() {
    // merchantid;
    paidmoney=TextEditingController();
    totalmeter=TextEditingController();
    costmeter=TextEditingController();
    category=TextEditingController();
    // getData();
    getMerchant();
    formattedDate = DateFormat('yyyy-MM-dd').format(now);
    super.onInit();
  }
}