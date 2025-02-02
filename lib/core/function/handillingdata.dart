
import '../class/statusrequest.dart';

handillingData(response){
  if(response is StatusRequest){
    if(response==StatusRequest.offlineinternet){
      return StatusRequest.offlineinternet;
    }
    else {
      return StatusRequest.serverfailur;
    }

  } else{
    return StatusRequest.success;
  }
}