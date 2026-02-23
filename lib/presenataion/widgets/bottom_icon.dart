import 'package:flutter/cupertino.dart';
Widget _bottomIcon(IconData icon,index,Function(int) onTap){
  return GestureDetector(
      onTap: () => onTap(index),
      child: Icon(icon,size: 28));
}