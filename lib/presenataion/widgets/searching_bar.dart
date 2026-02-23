import 'package:flutter/material.dart';
import 'package:nike_shoes_store/util/app_assets.dart';
class SearchingBar extends StatelessWidget {
  const SearchingBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child:  Card(
        surfaceTintColor: Colors.transparent,
        elevation: 4,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        child: Container(
          height: 55,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 30),
                //  Icon(Icons.search,size: 30,),
                Image.asset(AppAssets.ic_search,
                  width: 24,
                  height: 24,
                ),
                SizedBox(width: 15),
                Text('search',style: TextStyle(fontSize: 16,fontFamily: 'Poppins',fontWeight: FontWeight.w200),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}