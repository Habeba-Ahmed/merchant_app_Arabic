
// import 'package:e_commerce/core/class/statusrequest.dart';
// import 'package:e_commerce/core/constant/routes.dart';
// import 'package:e_commerce/core/function/handillingdata.dart';
// import 'package:e_commerce/data/datasource/remote/auth/verifycodedata.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// abstract class VerifyCodeSignUpController extends GetxController{
// checkCode();
// goToSuccessSignUp(String verifycode);
// }


// class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController{
//   GlobalKey<FormState> formstate = GlobalKey<FormState>();
//   late String verifycode;
//   String? email;
//   late StatusRequest statusrequest;

//   VerifyCodeData verifycodedata=VerifyCodeData(Get.find());

//   @override
//   checkCode() {
    
//   }
  
//   @override
//   goToSuccessSignUp(verifycode) async{
//     // if(formstate.currentState!.validate()){
//       statusrequest=StatusRequest.loading;
//       var response=await verifycodedata.postData(email!, verifycode );
//       statusrequest=handillingData(response);
//       if(statusrequest==StatusRequest.success){
//         if(response['status']=="success"){
//         Get.offNamed(AppRoutes.successSignUp);
//       }
//       else{
//         Get.defaultDialog(
//           title: "Warning...",
//           middleText: "Verify_code Uncorrect , check email again please"
//         );
//       }
      
//     }
//   }

  
//   @override
//   void onInit() {
//     email=Get.arguments['email'];
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }
// }