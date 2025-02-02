import 'package:get/get.dart';

validInput(String val,int min,int max,String type){
  if(val.isEmpty){
    return "value can't empty";
  }
  
  if (type=="username"){
    if(!GetUtils.isUsername(val)){
      return "NOt Valid";
    }
  }
  if (type=="email"){
    if(!GetUtils.isEmail(val)){
      return "NOt Valid Email";
    }
  }
  if (type=="phone"){
    if(!GetUtils.isPhoneNumber(val)){
      return "NOt Valid Phone Number";
    }
  }
  if(val.length<min){
    return "value can't be less than $min";
  }
  if(val.length>max){
    return "value can't be greater than $max";
  }
  
}