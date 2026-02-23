import 'package:flutter/material.dart';
import 'package:nike_shoes_store/presenataion/pages/detail_page.dart';
import 'package:nike_shoes_store/presenataion/pages/home_page.dart';
import 'package:nike_shoes_store/presenataion/pages/splash_page.dart';
import 'package:nike_shoes_store/util/app_routes.dart';

class AppRouter{
  AppRouter._();
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case AppRoutes.splashPage:
        return MaterialPageRoute(builder: (_)=> const SplashPage());
        break;
      case AppRoutes.homePage:
        return MaterialPageRoute(builder: (_)=> const HomePage());
        break;
      case AppRoutes.dashboardPage:
        return MaterialPageRoute(builder: (_)=> const DetailPage());
        break;
      default:
        return MaterialPageRoute(builder: (_)=>
           const Scaffold(
          body: Center(
            child: Text('No route found'),
          ),
        ));
    }
  }
}