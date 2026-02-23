import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:nike_shoes_store/presenataion/pages/dashboard_page.dart';
import 'package:nike_shoes_store/presenataion/pages/detail_page.dart';
import 'package:nike_shoes_store/presenataion/pages/splash_page.dart';
import 'package:nike_shoes_store/presenataion/provider/theme_provider.dart';
import 'package:nike_shoes_store/presenataion/widgets/custom_bottom_bar.dart';
import 'package:provider/provider.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int currentIndex=0;
  List<Widget> Pages=[DashboardPage(),DetailPage(),SplashPage(),SplashPage()];
   void onTapeSelected(int index){
     setState(() {
       currentIndex=index;
     });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: ClipRRect(
          clipBehavior: Clip.none,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 2,
                  offset: Offset(0,4)
                )
              ]
            ),
            child: Icon(Icons.home, color: Colors.white),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:CustomBottomBar(
        currentIndex: currentIndex,
        onTape:onTapeSelected,
      ),
    );
  }
}

// class CustomBottomBarScreen extends StatelessWidget {
//   const CustomBottomBarScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade300,
//
//       // Floating center button
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         backgroundColor: Colors.blue,
//         elevation: 6,
//         child: const Icon(Icons.home, color: Colors.white),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//
//       // Bottom bar
//       bottomNavigationBar: BottomAppBar(
//         shape: const CircularNotchedRectangle(),
//         notchMargin: 8,
//         elevation: 10,
//         child: Container(
//           height: 70,
//           padding: const EdgeInsets.symmetric(horizontal: 30),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: const [
//               Row(
//                 children: [
//                   Icon(Icons.trending_up, size: 28),
//                   SizedBox(width: 25),
//                   Icon(Icons.favorite_border, size: 28),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Icon(Icons.shopping_cart_outlined, size: 28),
//                   SizedBox(width: 25),
//                   Icon(Icons.settings_outlined, size: 28),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//
//       body: const Center(child: Text("Your Screen")),
//     );
//   }
// }



