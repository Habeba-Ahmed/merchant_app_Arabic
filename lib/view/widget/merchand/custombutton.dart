// // ignore_for_file: must_be_immutable

// import 'package:flutter/material.dart';

// import '../../../core/constant/color.dart';

// class CustomButton extends StatelessWidget {
//   String text;
//   void Function()? onPressed;
//   CustomButton({super.key,required this.text,required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(top : 10),
//       margin: const EdgeInsets.symmetric(horizontal : 20),
//       width : double.infinity,
//       child: MaterialButton( 
//         onPressed: onPressed,
//         padding: const EdgeInsets.symmetric(vertical: 10,),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20)),
//           color: AppColor.primaryColor,
//           textColor: Colors.white,
//           child: Text(
//             text,
//           style: const TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 16
//           ),
//         ),
//         ),
//     );
//   }
// }