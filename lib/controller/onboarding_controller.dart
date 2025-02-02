// import 'package:e_commerce/core/constant/routes.dart';
// import 'package:e_commerce/core/services/services.dart';
// import 'package:e_commerce/data/datasource/static/static.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// abstract class OnBoardingController extends GetxController{
//   next();
//   onPageChange(int index);
// }

// class OnBoardingControllerImp extends OnBoardingController{
//   late PageController pagecontroller;
//   int currentpage=0;  
//   MyServices myservice=Get.find();
//   @override
//   next() {
//     currentpage++;
//     if (currentpage > onBoardingList.length - 1) {
//       myservice.sharedPreferance.setString("step", "1") ; 
//       Get.offAllNamed(AppRoutes.login) ; 
//     } else {
//       pagecontroller.animateToPage(currentpage,
//           duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
//   }}

//   @override
//   onPageChange(int index) {
//     currentpage=index;
//     update();
//   }

// @override
//   void onInit() {
//     pagecontroller=PageController();
//     super.onInit();
//   }
// }