import 'package:flutter/material.dart';

import 'Discover.dart';
import 'Home_Page_full.dart';
import 'Product.dart';
import 'Profile.dart';


class FigmaHomePage extends StatefulWidget {
   FigmaHomePage({super.key});

  @override
  State<FigmaHomePage> createState() => _FigmaHomePageState();
}

class _FigmaHomePageState extends State<FigmaHomePage> {
  var index = 0;
  var screenList = [
    HomePageFull(),
    DiscoverPage(),
    Product(),
    Profile(),
    ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(

      body: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          type: BottomNavigationBarType.fixed,

          onTap: (value) {
            setState(() {});
            index = value;
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.lightBlueAccent,size: 30,),label: 'HomePage'),
            BottomNavigationBarItem(icon: Icon(Icons.search_rounded,color: Colors.lightBlueAccent,size: 30,),label: 'DiscoverPage'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded,color: Colors.lightBlueAccent,size: 30,),label: 'Product'),
            BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.lightBlueAccent,size: 30,),label: 'Profile')
          ],
        ),
        body:screenList[index] ,
      ),
    ),

    );
  }
}
