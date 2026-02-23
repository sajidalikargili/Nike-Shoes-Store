import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:nike_shoes_store/presenataion/provider/theme_provider.dart';
import 'package:nike_shoes_store/presenataion/widgets/searching_bar.dart';
import 'package:nike_shoes_store/presenataion/widgets/shoes_item.dart';
import 'package:provider/provider.dart';
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final themProvider=Provider.of<ThemeProvider>(context,listen: false).changeTheme();
    return Scaffold(
      appBar:AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Icon(Icons.arrow_back_ios,size: 25),
        ),
        actions: [
          IconButton(onPressed: (){
          context.read<ThemeProvider>().changeTheme();
          }, icon: Icon(Icons.ac_unit_rounded)),
          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: Icon(Icons.menu,size: 40),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(left: 35,top: 20),
              child:Text('Nike shoes store',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26),)
          ),
          SizedBox(height: 20),
          SearchingBar(),
          SizedBox(height: 20),
          GridView(),
        ],
      ),
    );
  }
}

class GridView extends StatelessWidget {
  const GridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 46),
      child: SizedBox(
        height:500,
        width: double.infinity,
        child: MasonryGridView.count(
          crossAxisCount: 2, // number of columns
          mainAxisSpacing: 30,
          crossAxisSpacing: 30,
          itemCount: 10,
          itemBuilder: (context, index) {
            return index % 2==0 ? SizedBox( height:240,width:300,child: ShoesItem(),) : SizedBox( height:200,width:300,child: ShoesItem(),) ;
          },
        ),
      ),
    );
  }
}
