import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'found_result.dart';

class SearchPage2 extends StatefulWidget {
  const SearchPage2({super.key});

  @override
  State<SearchPage2> createState() => _SearchPage2State();
}

class _SearchPage2State extends State<SearchPage2> {
  double _currentSliderValue = 20;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        body: Stack(
          children: [
            // Body ke widgets
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100), // Adjust karne ke liye
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        'Recent Searches',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.delete,
                            size: 35,
                            color: Colors.cyan,
                          ),
                        ),
                      )
                    ],
                  ),
                  // Yahan aapki body content aati hai
                  SizedBox(height: 100),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        'Recent Searches',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.delete_sharp,
                            size: 38,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 150),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        'Popular this week',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            'Show all',
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          // Products list
                          productCard('assets/image/image_20.png',
                              'Lihua Tunic White', '\$ 53.00'),
                          productCard('assets/image/image_21.png',
                              'Skirt Dress', '\$ 34.00'),
                          productCard('assets/image/image_22.png',
                              'Sportwear Set', '\$ 80.99'),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FoundResult(),
                              ));
                        },
                        child: Text('FoundResult')),
                  )
                ],
              ),
            ),
            // AppBar and other widgets
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: AppBar(
                title: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20),
                        SizedBox(
                          width: widthScreen * 0.7,
                          height: 60,
                          child: Card(
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: InkWell(
                                  onTap: () {},
                                  child: Icon(Icons.search),
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                hintText: 'Search..',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Card(
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                _scaffoldKey.currentState!.openEndDrawer();
                              },
                              child: Image(
                                image: AssetImage(
                                    'assets/image/settings-sliders.png'),
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Adding a widget over the AppBar
            Positioned(
              top: 60,
              left: 20, // AppBar ke upar position dena hoga
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SizedBox(
                  height: 45,
                  width: 45,
                  child: Card(
                    child: Icon(Icons.arrow_back_ios_new),
                  ),
                ),
              ),
            ),
          ],
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Filter',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          child: Image(
                            image:
                                AssetImage('assets/image/settings-sliders.png'),
                            width: 40,
                            height: 40,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Price',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Slider(
                      value: _currentSliderValue,
                      max: 100,
                      min: 0,
                      divisions: 100,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Color',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.green,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blueGrey,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.black38,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blueAccent.shade100,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.black54,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blueGrey.shade100,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Star Rating',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.cyan.shade700,
                                width: 1, // Border ki width set karein
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: ClipOval(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Icon(Icons.star),
                                    Text(
                                      '1',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.cyan.shade700,
                                width: 1, // Border ki width set karein
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: ClipOval(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Icon(Icons.star),
                                    Text(
                                      '2',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.cyan.shade700,
                                width: 1, // Border ki width set karein
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: ClipOval(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Icon(Icons.star),
                                    Text(
                                      '3',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.cyan.shade700,
                                width: 1, // Border ki width set karein
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: ClipOval(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Icon(Icons.star),
                                    Text(
                                      '4',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.cyan.shade700,
                                width: 1, // Border ki width set karein
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 25,
                              child: ClipOval(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '5',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Category',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 60,
                      child: Card(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide:
                                BorderSide(width: 2, color: Colors.red)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.shopping_bag_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Crop Tops',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Spacer(),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Discount',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 130,
                          height: 60,
                          child: Card(
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    BorderSide(width: 2, color: Colors.red)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text('\50% off',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.close,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          height: 60,
                          child: Card(
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    BorderSide(width: 2, color: Colors.red)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text('\40% off',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.close,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 130,
                          height: 60,
                          child: Card(
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    BorderSide(width: 2, color: Colors.red)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text('\30% off',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.close,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          height: 60,
                          child: Card(
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    BorderSide(width: 2, color: Colors.red)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text('\25% off',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.close,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    SizedBox(
                      width: 120,
                      child: OutlinedButton(
                          onPressed: () {},
                          style:
                              OutlinedButton.styleFrom(side: BorderSide.none),
                          child: Text('Reset')),
                    ),
                    SizedBox(
                      width: 120,
                      child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.black),
                          child: Text(
                            'Apply',
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Reusable product card widget
  Widget productCard(String imagePath, String title, String price) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 280,
          width: 180,
          child: Card(
            child: Image(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Text(
          price,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        )
      ],
    );
  }
}
