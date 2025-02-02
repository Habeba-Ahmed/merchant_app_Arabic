
import 'package:get/get.dart';
import 'package:merchant/core/services/myservices.dart';
import 'package:merchant/data/datasource/remote/merchantdata.dart';
import 'package:merchant/data/model/merchantviewmodel.dart';
import '../core/class/statusrequest.dart';
import '../core/function/handillingdata.dart';

abstract class MerchantViewController extends GetxController{
getData();
}

class MerchantViewControllerImp extends MerchantViewController{
MerchantData  merchantData=MerchantData(Get.find());
late MerchantVuiewodel merchantModel;
List <MerchantVuiewodel>data=[];
late StatusRequest statusrequest;
MyServices myServices=MyServices();
late String name;
// late int totalmoney;


  @override
  getData() async{
    data.clear();
    // print("${myServices.sharedPreferance.getString("id")}0000000000000000000000000");
    statusrequest=StatusRequest.loading;
    var response=await merchantData.viewDetails(
      "1",
      merchantModel.merchantId!.toString()
    );
    statusrequest=handillingData(response);
    if(StatusRequest.success==statusrequest){
      update();
      if(response['status']=="success"){
        // data.addAll(response['data']);
        data.clear();
        List dataResponse=response['data'];
        data.addAll(dataResponse.map((e) => MerchantVuiewodel.fromJson(e)));
        // print("KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK${data}");
      } 
      else{
        statusrequest= StatusRequest.failur;
      }
    }
  }


  
  
  @override
  void onInit() {
    merchantModel=Get.arguments['merchantmodel'];
    name=Get.arguments['name'];
    // totalmoney=Get.arguments['totalprice'];
    
    // print("nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn$name");
    getData();
    super.onInit();
}
  }