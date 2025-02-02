
import 'package:get/get.dart';
import 'package:merchant/view/screens/auth/login.dart';
import 'package:merchant/view/screens/bill.dart';
import 'package:merchant/view/screens/merchant.dart';
import 'package:merchant/view/screens/merchantview.dart';

import 'core/constant/routes.dart';
import 'core/middleware/mymiddleware.dart';
import 'view/screens/addmerchant.dart';
import 'view/screens/home.dart';

List<GetPage<dynamic>> routes = [
  GetPage(name: "/", page: () => const LoginPage() , middlewares: [
    MyMiddleWare()]),
  GetPage(name: AppRoutes.home, page: () => const Home()),
  GetPage(name: AppRoutes.viewmerchant, page: () => const Merchant()),
  GetPage(name: AppRoutes.addmerchant, page: () => const AddMerchant()),
  
  GetPage(name: AppRoutes.bill, page: () => Bill()),
  GetPage(name: AppRoutes.merchantdetails, page: () => const MerchantView()),
  // GetPage(name: AppRoutes.categories, page: () => const Categories()),
  // GetPage(name: AppRoutes.addcategory, page: () => const AddCategory()),

  // GetPage(name: AppRoutes.items, page: () => const Items()),
  // GetPage(name: AppRoutes.viewItems, page: () => const ViewItems()),
  // GetPage(name: AppRoutes.discounditems, page: () => const DiscoundItems()),
  // GetPage(name: AppRoutes.soldout, page: () => const SoldOutItems()),
  // GetPage(name: AppRoutes.abouttosold, page: () => const AboutToSold()),
  // GetPage(name: AppRoutes.additems, page: () => const AddItems()),

];