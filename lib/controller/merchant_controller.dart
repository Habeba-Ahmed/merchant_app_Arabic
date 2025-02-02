
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:merchant/core/constant/routes.dart';
import 'package:merchant/core/services/myservices.dart';
import 'package:merchant/data/datasource/remote/merchantdata.dart';
import 'package:merchant/data/model/merchantviewmodel.dart';
import '../core/class/statusrequest.dart';
import '../core/function/handillingdata.dart';

abstract class MerchantController extends GetxController{
getData();
add();
}

class MerchantControllerImp extends MerchantController{
MerchantData merchantData=MerchantData(Get.find());
List data=[];
late StatusRequest statusrequest;
MyServices myServices=MyServices();

late TextEditingController name;
late TextEditingController previousprices;


  @override
  getData() async{
    data.clear();
    // print("${myServices.sharedPreferance.getString("id")}0000000000000000000000000");
    statusrequest=StatusRequest.loading;
    var response=await merchantData.getData(
      "1"
      // myServices.sharedPreferance.getString("id")!
    );
    statusrequest=handillingData(response);
    if(StatusRequest.success==statusrequest){
      update();
      if(response['status']=="success"){
        data.addAll(response['data']);
      } 
      else{
        statusrequest= StatusRequest.failur;
      }
    }
  }


  @override
  add()async{
    Map data={
      "userid":"1",
      "name":name.text,
      "previousprices":previousprices.text,
    };
    statusrequest=StatusRequest.loading;
    var response=await merchantData.addData(
      data,
    );
    statusrequest=handillingData(response);
    if(StatusRequest.success==statusrequest){
      update();
      if(response['status']=="success"){
        getData();
        Get.offAllNamed(AppRoutes.home);
      } 
      else{
        statusrequest= StatusRequest.failur;
      }
    }
  }

  goToMerchantDetails(MerchantVuiewodel merchantmodel, String? merchantName){
  Get.toNamed(AppRoutes.merchantdetails,arguments: {
    'merchantmodel':merchantmodel,
    'name':merchantName,
    // 'totalprice':totalprice,
  });
}
  @override
  void onInit() {
    name=TextEditingController();
    previousprices=TextEditingController();
    getData();
    super.onInit();
  }
}