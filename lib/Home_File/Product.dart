import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'Your_Card.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  final double averageRating = 4.9;
  final int totalRatings = 83;
  final List<int> ratingCount = [66, 10, 4, 3, 0];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 400,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Center(
                            child: Image(
                              image: AssetImage('assets/image/image_30.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          right: 40,
                          top: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Center(
                                          child: Image(
                                        image: AssetImage(
                                            'assets/image/heart.png'),
                                        height: 25,
                                        width: 30,
                                      ))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                      Positioned(
                          left: 40,
                          top: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Center(
                                          child: Icon(Icons.arrow_back_ios_new))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 305,
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Card(
                color: Colors.black,
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return showButtonSheetWidget();
                      },
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => YourCard(),));
                        },
                        child: Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Add To Card',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showButtonSheetWidget() {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Container(
          width: widthScreen,
          height: heightScreen * 1.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Sportwear Set',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Spacer(),
                  Text('\$80.00',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  RatingBarIndicator(
                    rating: averageRating,
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.grey.shade600,
                    ),
                    itemCount: 5,
                    itemSize: 25.0,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Color',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Spacer(),
                  Text('Size',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  SizedBox(
                    width: 60,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 30),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: CircleAvatar(
                              radius: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.black,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.red.shade500,
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 18,
                    child: Text('S'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 18,
                    child: Text('M'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.black54,
                    child: Text(
                      'L',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  )
                ],
              ),
              Expanded(
                  child: Column(
                    children: [
                      ExpansionTile(
                        title: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Description',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        children: [
                          ListTile(
                            title: Column(
                              children: [
                                Text(
                                  'Sportswear is no longer under cukture, it is no '
                                      'longer indie or cobbled together as it once was '
                                      'Sport is fashion today. the top is oversized in fit ',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    Text('and style. may need to size down.'),
                                    InkWell(
                                      onTap: () {},
                                      child: Text(
                                        'Read more',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            decoration: TextDecoration.underline),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ExpansionTile(
                        title: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Reviews',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        children: [
                          ListTile(
                            title: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      averageRating.toString(),
                                      style: TextStyle(
                                          fontSize: 40, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'OUT OF 5',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        RatingBarIndicator(
                                          rating: averageRating,
                                          itemBuilder: (context, index) => Icon(
                                            Icons.star,
                                            color: Colors.grey.shade600,
                                          ),
                                          itemCount: 5,
                                          itemSize: 25.0,
                                        ),
                                        Text('$totalRatings ratings'),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                _builderRatingBar(5, ratingCount[0]),
                                _builderRatingBar(4, ratingCount[1]),
                                _builderRatingBar(3, ratingCount[2]),
                                _builderRatingBar(2, ratingCount[3]),
                                _builderRatingBar(1, ratingCount[4]),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Text('47 Reviews'),
                                    Spacer(),
                                    Text('WRITE A REVIEW'),
                                    Icon(Icons.edit)
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Card(
                                      shape: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(50)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image(
                                          image:
                                          AssetImage('assets/image/image_31.png'),
                                          height: 50,
                                          width: 50,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text('Jennifer Rose'),
                                        RatingBarIndicator(
                                          rating: averageRating,
                                          itemBuilder: (context, index) => Icon(
                                            Icons.star,
                                            color: Colors.grey.shade600,
                                          ),
                                          itemCount: 5,
                                          itemSize: 25.0,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      '5m age',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue.shade200),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text('i have it. Aweasome customer service!!\n'
                                    ' Helped me out with adding an additional \n'
                                    'item to my order. thanks again'),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Card(
                                      shape: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(50)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image(
                                          image:
                                              AssetImage('assets/image/image_32.png'),
                                          height: 50,
                                          width: 50,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text('Kelly Rihana'),
                                        RatingBarIndicator(
                                          rating: averageRating,
                                          itemBuilder: (context, index) => Icon(
                                            Icons.star,
                                            color: Colors.grey.shade600,
                                          ),
                                          itemCount: 5,
                                          itemSize: 25.0,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      '9m age',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue.shade200),
                                    )
                                  ],
                                ),
                                Text(
                                  'I am very happy with order, it was delivered on and good \n'
                                  'quality Recommended!',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),
                      ExpansionTile(
                        title: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Description',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        children: [
                          ListTile(
                            title: Column(
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 320,
                                        width: 190,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(20),
                                              child: Image(
                                                image: AssetImage('assets/image/image_33.png'),height: 220,width: 150,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Text('Rise Crop Hoodie',style: TextStyle(fontWeight: FontWeight.bold)),
                                            Text('\$43.00',style: TextStyle(fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 320,
                                        width: 190,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(20),
                                              child: Image(
                                                image: AssetImage('assets/image/image_34.png'),height: 220,width: 150,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Text('Gym Crop Top',style: TextStyle(fontWeight: FontWeight.bold)),
                                            Text('\$39.99',style: TextStyle(fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 320,
                                        width: 190,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(20),
                                              child: Image(
                                                image: AssetImage('assets/image/image_35.png'),height: 220,width: 150,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Text('Sport Sweater Top',style: TextStyle(fontWeight: FontWeight.bold)),
                                            Text('\$47.99',style: TextStyle(fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        )
      ],

    );
  }

  Widget _builderRatingBar(
    int star,
    int count,
  ) {
    double percentage = (count / totalRatings) * 100;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text('$star'),
          Icon(Icons.star, size: 16, color: Colors.grey),
          SizedBox(width: 8),
          Expanded(
              child: LinearProgressIndicator(
            value: count / totalRatings,
            backgroundColor: Colors.grey[300],
            color: Colors.green,
          )),
          Text('${percentage.toStringAsFixed(0)}%'),
        ],
      ),
    );
  }
}
