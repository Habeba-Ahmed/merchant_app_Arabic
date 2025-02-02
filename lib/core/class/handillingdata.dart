// ignore_for_file: must_be_immutable


import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constant/lotties.dart';
import 'statusrequest.dart';

class HandilingDataView extends StatelessWidget {
  StatusRequest statusRequest;
  Widget widget;
  HandilingDataView({
    super.key,
    required this.statusRequest,
    required this.widget,
    });

  @override
  Widget build(BuildContext context) {
    return 
    statusRequest==StatusRequest.loading?
    Center(child: Lottie.asset(Lottieassets.loading,width : 300)):
    statusRequest==StatusRequest.offlineinternet?
    Center(child: Lottie.asset(Lottieassets.offline)):
    statusRequest==StatusRequest.serverfailur?
    Center(child: Lottie.asset(Lottieassets.serverfailur)):
    statusRequest==StatusRequest.failur?
    Center(child: Lottie.asset(Lottieassets.nodata,width : 300)):
    widget;
  }
}