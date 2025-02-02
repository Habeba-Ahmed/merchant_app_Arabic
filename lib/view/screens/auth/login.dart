// ignore_for_file: deprecated_member_use, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/imageassets.dart';
import '../../../core/function/validinput.dart';
import '../../widget/auth/custombutton.dart';
import '../../widget/auth/customtextbody.dart';
import '../../widget/auth/customtextformfield.dart';
import '../../widget/auth/customtexttitle.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LogInControllerImp controller =Get.put(LogInControllerImp());
    return Scaffold( 
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.backgroundcolor,
        centerTitle: true,
        title: Text("Sign In",
          style:Theme.of(context).textTheme.headline1!.copyWith(color:AppColor.grey )),
        ),
      
      body: 
      // GetBuilder<LogInControllerImp>(builder: (controller)=>
        Container(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 40),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              CustomTextTitle(texttitle: "Welcome Back"),
              
              const SizedBox(height : 15,),
              Image.asset(ImageAssets.logo,
              height : 200,
              ),
        
              const SizedBox(height : 15,),
              
              CustomTextBody(textbody: "Sign in with your email and password\nor continue with social media"),
        
              const SizedBox(height : 20,),
        
              CustomTextFormFieldAuth(
                valid: (val) {
                  return validInput(val!, 10, 50, "email");
                },
                keyboardtype:TextInputType.emailAddress,
                mycontroller: controller.email,
                icon: Icons.email_outlined, 
                hinttext: "Enter your email", 
                labeltext: "Email"),
        
              CustomTextFormFieldAuth(
                valid: (val) {
                  return validInput(val!, 3, 25, "password");
                },
                mycontroller: controller.password,
                icon: Icons.lock_clock_outlined, 
                hinttext: "Enter your password", 
                labeltext: "Password"),

                // InkWell(
                //   onTap: (){
                //     controller.goToforgetPassword();
                //   },
                //   child: const Text("Forget Password ?",
                //   textAlign: TextAlign.end,),
                // ),

                CustomButton(
                  text: "Sign In", 
                  onPressed: (){
                    controller.login();
                  }),

                  const SizedBox(height : 10,),

            ],
          ),
        ),
      )
      );
    
  }
}