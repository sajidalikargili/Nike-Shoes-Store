import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_shoes_store/data/services/theme_storage.dart';
class ThemeProvider extends ChangeNotifier{
  ThemeProvider(){
    _loadTheme();
  }
   bool _isDark=true;
  ThemeMode _themeMode=ThemeMode.dark;
  ThemeMode get themeMode => _themeMode;
  bool get isDark  => _isDark;
   Future<void> _loadTheme() async {
     _isDark = await ThemeStorage.loadTheme();
     _themeMode=isDark ? ThemeMode.dark : ThemeMode.light;
       notifyListeners();
   }
  Future<void> changeTheme() async {
     _isDark=!_isDark;
     _themeMode=isDark ? ThemeMode.dark : ThemeMode.light;
     ThemeStorage.saveTheme(isDark);
     notifyListeners();
  }

}