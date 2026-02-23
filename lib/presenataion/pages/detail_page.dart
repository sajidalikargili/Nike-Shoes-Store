import 'package:flutter/material.dart';
import 'package:nike_shoes_store/util/app_assets.dart';
import 'package:nike_shoes_store/util/app_colors.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDark ?Theme.of(context).colorScheme.surface:AppColors.brightSkyBlue,
      appBar:AppBar(
        backgroundColor: AppColors.brightSkyBlue,
        leading: Padding(
          padding: const EdgeInsets.only(left: 35),
          child: IconButton(onPressed: (){
             Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios,size: 25)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Icon(Icons.menu,size: 40),
          )
        ],
      ),
      body: Stack(
        children: [
        Positioned(
          top: 15,
          left: 30,
            right: 30,
            child:Image.asset(AppAssets.img_black_shoes,height: 200,fit: BoxFit.fill,) ),
          Positioned.fill(
            top: 250,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration:BoxDecoration(
                  color: isDark ? Theme.of(context).colorScheme.surface : Colors.white,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30))
                ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text('White Shoes',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1 Pair'),
                  Text('\$220:00',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),)
                ],
              ),
                  SizedBox(height: 100),
                  Text('Product Description',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20)),
                  SizedBox(height: 10),
                  Text(' this is long establish fact that read will  be distracted by the readable countent  of a page  when scroll it layout and thier location is good and their task.'),
                  Expanded(child: Column(

                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      favouriteContainer(),
                      addtoCartBtn()
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
 Widget favouriteContainer(){
  return Container(
    width: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
 border: Border.all(color: AppColors.brightSkyBlue,width: 1.5)
    ),
    child: Center(
      child: Icon(Icons.favorite,color: AppColors.brightSkyBlue,size: 30,),
    ),
  );
 }
 Widget  addtoCartBtn(){
  return Container(
    width: 140,
    height: 40,
    decoration: BoxDecoration(
      color: AppColors.brightSkyBlue,
      borderRadius: BorderRadius.circular(8)
    ),
    child: Center(
      child: Text('Add to Cart',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white),),
    ),
  );
 }
