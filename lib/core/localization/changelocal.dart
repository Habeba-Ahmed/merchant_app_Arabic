import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../services/myservices.dart';

class LocalController extends GetxController{
  Locale? language;
  MyServices myService=Get.find();

  changlang(String langCode){
    Locale local=Locale(langCode);
    myService.sharedPreferance.setString("lang", langCode);
    Get.updateLocale(local);
  }

  @override
  void onInit() {
    String ? sharedPreferancelang=myService.sharedPreferance.getString("lang");
    if(changlang("ar")==sharedPreferancelang){
      language=const Locale("ar");
    }
    else if(changlang("ar")==sharedPreferancelang){
      language=const Locale("en");
      }
    else{
      language=Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  
  }
}