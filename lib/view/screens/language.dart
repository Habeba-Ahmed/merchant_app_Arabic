
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../core/constant/routes.dart';
// import '../../core/localization/changelocal.dart';
// import '../widget/languages/custombuttonlang.dart';

// class Language extends GetView<LocalController> {
//   const Language({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("1".tr,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
//             const SizedBox(height : 20,),
//             // CustomButtonLanguage(textLang: '2'.tr,onPressed: (){
//             //   controller.changlang("ar");
//             //   Get.toNamed(AppRoutes.onBoarding);
//             // },),
//             // CustomButtonLanguage(textLang: '3'.tr,onPressed: (){
//             //   controller.changlang("en");
//             //   Get.toNamed(AppRoutes.onBoarding);
//             // },),
//           ],
//         ),
//       ),
//     );
//   }
// }