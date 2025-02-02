

import '../../../core/class/crud.dart';
import '../../../linkapi.dart';

class MerchantData{
Crud crud;
MerchantData(this.crud);

getData(String userid)async{
  var response=await crud.postData(AppLinks.viewmerchant, {"userid":userid});
  return response.fold((left) => left, (right) => right);
}

addData(Map data)async{
  var response=await crud.postData(AppLinks.addmerchant,data);
  return response.fold((left) => left, (right) => right);
}

viewDetails(String userid,String merchantid)async{
  var response=await crud.postData(AppLinks.merchantview,{"userid":userid,"merchantid":merchantid});
  return response.fold((left) => left, (right) => right);
}
}