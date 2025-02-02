// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:merchant/core/services/myservices.dart';

import '../constant/routes.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find() ; 

  @override
  RouteSettings? redirect(String? route) {
    if(myServices.sharedPreferance.getString("step") == "2"){
      return const RouteSettings(name: AppRoutes.home) ; 
    }
    if(myServices.sharedPreferance.getString("step") == "1"){
      return const RouteSettings(name: AppRoutes.login) ; 
    }
  }
}