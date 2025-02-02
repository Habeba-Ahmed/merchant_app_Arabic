

import '../../../core/class/crud.dart';
import '../../../linkapi.dart';

class LoginData{
Crud crud;
LoginData(this.crud);

postdata(String password,String email)async{
  var response=await crud.postData(AppLinks.login, {"password":password,"email":email});
  return response.fold((left) => left, (right) => right);
}
}