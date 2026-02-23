import 'package:flutter/material.dart';
import 'package:nike_shoes_store/util/app_colors.dart';
import 'package:nike_shoes_store/util/app_routes.dart';
import 'package:nike_shoes_store/util/app_text_style.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
   _navigate();
  }
  void _navigate(){
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushNamed(context, AppRoutes.homePage);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightSkyBlue,
      body: Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nike Shoes Store',style: AppTextStyle.heading.copyWith(color: Colors.white),)

          ],
        ),
      ),
    );
  }
}
