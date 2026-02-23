import 'package:flutter/material.dart';
import 'package:nike_shoes_store/presenataion/provider/theme_provider.dart';
import 'package:nike_shoes_store/util/app_router.dart';
import 'package:nike_shoes_store/util/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_)=>ThemeProvider(),
      child: const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context,ThemeProvider,child){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: AppRoutes.splashPage,
        onGenerateRoute: AppRouter.generateRoute,
        themeMode: ThemeProvider.themeMode,
        theme:ThemeData.light(),
        darkTheme: ThemeData.dark(),
      );
    });
  }
}
