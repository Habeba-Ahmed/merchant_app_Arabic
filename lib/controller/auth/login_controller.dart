// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/function/handillingdata.dart';
import '../../core/services/myservices.dart';
import '../../data/datasource/remote/logindata.dart';

abstract class LogInController extends GetxController{
login();
// goToSignUp();
// goToforgetPassword();
}


class LogInControllerImp extends LogInController{
  GlobalKey<FormState> formstate=GlobalKey<FormState>();
  MyServices myservices=Get.find();
  late TextEditingController email;
  late TextEditingController password;

  StatusRequest? statusrequest;

  LoginData logindata =LoginData(Get.find());



  @override
  login() async{
      if (formstate.currentState!.validate()) {
        statusrequest=StatusRequest.loading;
        var response=await logindata.postdata(
          password.text, 
          email.text, 
          );

          statusrequest=handillingData(response);
          if(statusrequest==StatusRequest.success){
            // print("${response['status']}=====================");
            if(response['status']=="success"){
              myservices.sharedPreferance.setString("id",response['data']['user_id'].toString());
              myservices.sharedPreferance.setString("name",response['data']['user_name']);
              myservices.sharedPreferance.setString("email",response['data']['user_email']);
              myservices.sharedPreferance.setString("step","2");
              Get.offNamed(AppRoutes.home);
            } 
            else{
              Get.defaultDialog(
                title: "Warning...",
                middleText: "Email or Passwors is un_correct, please try again"
              );
              statusrequest= StatusRequest.failur;
            }
            update();
          }
    } else { 
    }
  }

  @override
  void onInit() async{
//     FirebaseMessaging.instance;
// // use the returned token to send messages to users from your custom server
//     FirebaseMessaging.instance.getToken().then((value) {
//       // print("======================$value");
//       // String? token=value;
//     });
    email=TextEditingController();
    password=TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}