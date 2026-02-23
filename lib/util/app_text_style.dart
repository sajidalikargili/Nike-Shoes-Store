import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextStyle{
  AppTextStyle._();
 static TextStyle _commontTextStyle({required double fontSize,required FontWeight fontWeight,Color color = Colors.black} ){
    return TextStyle(fontSize: fontSize,fontWeight: fontWeight);
  }
  static final TextStyle  heading=_commontTextStyle(fontSize: 24,fontWeight:  FontWeight.bold);
  static final TextStyle  subTitle=_commontTextStyle(fontSize:  18,fontWeight:  FontWeight.w700);
  static final TextStyle  body=_commontTextStyle(fontSize:  16,fontWeight:  FontWeight.normal);
  static final TextStyle bodyMedium =_commontTextStyle(fontSize: 16,fontWeight:  FontWeight.w500);
  static final TextStyle caption =_commontTextStyle(fontSize: 12,fontWeight:  FontWeight.normal);
  static final TextStyle button =_commontTextStyle(fontSize:  16,fontWeight:  FontWeight.w600);
  static final TextStyle appBarTitle= _commontTextStyle(fontSize: 20,fontWeight:  FontWeight.w600);



}