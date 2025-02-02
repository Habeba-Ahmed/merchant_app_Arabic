

import '../../../core/class/crud.dart';
import '../../../linkapi.dart';

class BillData{
Crud crud;
BillData(this.crud);

addData(Map data)async{
  var response=await crud.postData(AppLinks.addbill,data);
  return response.fold((left) => left, (right) => right);
}

// getMerchant()async{
//   var response=await crud.postData(AppLinks.addbill);
//   return response.fold((left) => left, (right) => right);
// }
}