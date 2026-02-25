import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_shoes_store/presenataion/pages/home_page.dart';
import 'package:nike_shoes_store/util/app_routes.dart';

class SplashService{
 static navigateScreen(BuildContext context) {
  Future.delayed(Duration(seconds: 3),(){
    Navigator.pushNamed(context, AppRoutes.homePage);
 // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
});
  }
}
