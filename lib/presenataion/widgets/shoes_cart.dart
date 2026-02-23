import 'package:flutter/material.dart';
import 'package:nike_shoes_store/util/app_assets.dart';
import 'package:nike_shoes_store/util/app_colors.dart';
class ShoesCard extends StatelessWidget {
  const ShoesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.brightSkyBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// top row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Blue',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const Text(
                    "A pair",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              Image.asset(
                AppAssets.ic_correct,
                height: 22,
                width: 22,
              ),
            ],
          ),

          const SizedBox(height: 12),

          /// shoe image
          Expanded(
            child: Center(
              child: Image.asset(AppAssets.img_black_shoes),
            ),
          ),

          /// price
          Align(
            alignment: Alignment.bottomRight,
            child: RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: '\$ 220',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '.00',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}