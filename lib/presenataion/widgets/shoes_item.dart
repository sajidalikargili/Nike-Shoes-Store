import 'package:flutter/material.dart';
import 'package:nike_shoes_store/util/app_assets.dart';
import 'package:nike_shoes_store/util/app_colors.dart';
class ShoesItem extends StatelessWidget {
  const ShoesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 140,
      decoration: BoxDecoration(
          color: AppColors.brightSkyBlue,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Blue',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                    Text('A apir')
                  ],
                ),
                Image.asset(AppAssets.ic_correct,color: Colors.white,height: 30,width: 30,)
              ],
            ),
          ),
          Positioned(
              top:35,
              left: 0,
              right: -20,
              child: Image.asset(AppAssets.img_blue_shoe)),
          Positioned(
              right: 20,
              bottom: 15,
              child:RichText(text: TextSpan(
                  text: '\$220',
                  style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),
                  children: [
                    TextSpan(
                        text: '.00',
                        style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12)
                    )
                  ]
              )))
        ],

      ),
    );
  }
}