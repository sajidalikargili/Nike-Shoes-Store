
import 'package:shared_preferences/shared_preferences.dart';

class ThemeStorage{
  static const String _key="is_dark_theme";
  static Future<void> saveTheme( bool dark) async{
    final sharePref= await  ThemeStorage.getSharePref();
    sharePref.setBool(_key, dark);
  }
 static Future<bool> loadTheme() async{
   final sharePref= await ThemeStorage.getSharePref();
  return sharePref.getBool(_key) ?? true;
  }
 static Future<SharedPreferences> getSharePref() async {
    return await SharedPreferences.getInstance();
  }
}