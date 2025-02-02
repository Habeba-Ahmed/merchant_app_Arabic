import 'package:get/get.dart';

class MyTranslation extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    "ar":{
      "1":"اختار اللغه",
      "2":"العربيه",
      "3":"الانجليزيه"
      },
    "en":{
      "1":"Choose Languages",
      "2":"Arabic",
      "3":"English"
      },
  };

}