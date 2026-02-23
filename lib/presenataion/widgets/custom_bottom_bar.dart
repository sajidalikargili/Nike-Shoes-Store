import 'package:flutter/material.dart';
class CustomBottomBar extends StatelessWidget {
  int currentIndex;
  final Function(int) onTape;
  CustomBottomBar({super.key,required this.currentIndex, required this.onTape});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      elevation: 10,
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Row(
                    children: [
                      _bottomIcon(Icons.trending_up, 0,onTape),
                      const SizedBox(width: 25),
                      _bottomIcon(Icons.favorite_border, 1,onTape)
                    ]
                )
              ],
            ),
            Row(
              children: [
                _bottomIcon(Icons.shopping_cart_outlined, 2,onTape),
                const SizedBox(width: 25),
                _bottomIcon(Icons.settings_outlined, 3,onTape)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
Widget _bottomIcon(IconData icon,index,Function(int) onTap){
  return GestureDetector(
      onTap: () => onTap(index),
      child: Icon(icon,size: 28));
}