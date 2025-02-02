// ignore_for_file: unnecessary_brace_in_string_interps, avoid_print, depend_on_referenced_packages

import 'dart:convert';
import 'dart:io';


import 'package:either_dart/either.dart';
import 'package:http/http.dart'as http;

import '../function/checkinternet.dart';
import 'statusrequest.dart';
import 'package:path/path.dart';

class Crud{
  Future<Either<StatusRequest,Map>> postData(String linkurl ,Map data )async{
    if(await checkInternet()){
      var response=await http.post(Uri.parse(linkurl),body: data);
      // print("response=========================${response.body}");
      // print("response=========================${response.statusCode}");
      if(response.statusCode==200|| response.statusCode==201){
        // print("===========================================${response.body}");
        var responsebody=jsonDecode(response.body);
        return Right(responsebody);
      }
      else{
        return const Left(StatusRequest.serverfailur);
      }
    }
    else{
      return const Left(StatusRequest.offlineinternet);
    }

  }

postRequestWithFile(String url,Map data,File file)async{
  var request=http.MultipartRequest('POST', Uri.parse(url));
  var length=await file.length();
  var stream=http.ByteStream(file.openRead());

  var multipartFile=http.MultipartFile(
    'file', 
    stream,
    length,
    filename: basename(file.path)
    );
    request.files.add(multipartFile);
    data.forEach((key, value) { 
      request.fields[key]=value;
    });
    var myrequest=await request.send();
    var response=await http.Response.fromStream(myrequest);
    
    if(response.statusCode==200|| response.statusCode==201){
      var responsebody=jsonDecode(response.body);
      // print("0000000000000000000000${responsebody}");
      return Right(responsebody);
    }
    else{
      return const Left(StatusRequest.serverfailur);
    }
}
}
