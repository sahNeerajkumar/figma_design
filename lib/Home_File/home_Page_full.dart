import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageFull extends StatefulWidget {
  const HomePageFull({super.key});

  @override
  State<HomePageFull> createState() => _HomePageFullState();
}

class _HomePageFullState extends State<HomePageFull> {
  final _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 5,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notification_important,
                  size: 35,
                ))
          ],
          title: Padding(
            padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
            child: Text(
              'Gemstore',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              SizedBox(
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: UserAccountsDrawerHeader(
                    accountName: Text('Neeraj kumar'),
                    accountEmail: Text('Niraj@kumar'),
                    currentAccountPicture: Icon(
                      Icons.person_pin,
                      size: 50,
                    ),
                    currentAccountPictureSize: Size(35, 50),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));// Close the drawer
                },
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text('Search'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemSelect())
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection:Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 30,
                            child: Image(image: AssetImage('assets/image/women.png'),height: 35,width: 35,fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 10,),
                          Text('Woman ')
                        ],
                      ),
                    ),
                    SizedBox(width: 40,),
                    Container(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: Image(image: AssetImage('assets/image/man.png'),height: 35,width: 35,fit: BoxFit.cover,),

                          ),
                          SizedBox(height: 10,),
                          Text('Man')
                        ],
                      ),
                    ),
                    SizedBox(width: 40,),
                    Container(
                      child:  Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: Image(image: AssetImage('assets/image/glasses.png'),height: 35,width: 35,fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 10,),
                          Text('Accessories ')
                        ],
                      ),
                    ),
                    SizedBox(width: 40,),
                    Container(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: Image(image: AssetImage('assets/image/brush.png'),height: 35,width: 35,fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 10,),
                          Text('Beauty ')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Stack(
                alignment: Alignment.center,
                  children: [
                   Container(
                     height: heightScreen*0.3,
                     width: widthScreen*0.9,
                     decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10.0),
                         image: DecorationImage(
                         image: AssetImage('assets/image/image_5.png'))),
                     child: Column(
                     children: [
                     Expanded(
                      child: PageView(
                       controller: _controller,
                       children: [
                         Container(
                           child:
                           Padding(
                             padding: const EdgeInsets.fromLTRB(250, 30, 0, 0),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('Autumn',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                                 Text('Collection',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                                 Text('2021',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),

                               ],
                             ),
                           ),
                         ),
                         Container(
                           child:
                           Padding(
                             padding: const EdgeInsets.fromLTRB(250, 30, 0, 0),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('Autumn',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                                 Text('Collection',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                                 Text('2022',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),

                               ],
                             ),
                           ),
                         ),
                         Container(
                           child:
                           Padding(
                             padding: const EdgeInsets.fromLTRB(250, 30, 0, 0),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('Autumn',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                                 Text('Collection',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                                 Text('2023',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),

                               ],
                             ),
                           ),
                         ),
                         Container(
                           child:
                           Padding(
                             padding: const EdgeInsets.fromLTRB(250, 30, 0, 0),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('Autumn',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                                 Text('Collection',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                                 Text('2024',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),

                               ],
                             ),
                           ),
                         ),
                         Container(
                           child:
                           Padding(
                             padding: const EdgeInsets.fromLTRB(250, 30, 0, 0),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('Autumn',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                                 Text('Collection',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                                 Text('2025',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),

                               ],
                             ),
                           ),
                         ),
                     ],)),
                     SmoothPageIndicator(controller: _controller, count:5,effect: ScaleEffect(dotHeight: 10,dotWidth: 10,dotColor: Colors.white),),
                       SizedBox(height: 40,),
                     ],
                   ),
                      )
                  ],
                ),
              Container(
                  margin: EdgeInsets.all(30),
                  child: Row(
                    children: [
                      Text(
                        'Feature Products',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Text('Show all',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                      )
                    ],
                  )),
              Container(
                margin: EdgeInsets.all(30),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 280,
                            width: 180,
                            child:
                            Card(
                              child:Image(image: AssetImage('assets/image/image_6.png'),fit: BoxFit.cover) ,
                            ),
                          ),
                          Text('Turtleneck Sweater',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          Text('\$ 39.99',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 280,
                            width: 180,
                            child:
                            Card(
                              child:Image(image: AssetImage('assets/image/image_7.png'),fit: BoxFit.cover,alignment: Alignment.topCenter,) ,
                            ),
                          ),
                          Text('Long Sleeve Dress',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          Text('\$ 45.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 280,
                            width: 180,
                            child:
                            Card(
                              child:Image(image: AssetImage('assets/image/image_8.png'),fit: BoxFit.cover,) ,
                            ),
                          ),
                          Text('Sportwear Set',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                          Text('\$ 80.99',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.blueGrey.shade50,
               child: Row(
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       SizedBox(height: 20,),
                       Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: Text('I NEW COLLECTION',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                       ),
                       SizedBox(height: 20,),
                       Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: Text('HANG OUT',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: Text('& PARTY',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
                       ),
                     ],
                   ),
                   Image(image: AssetImage('assets/image/image_9.png')),

                 ],
               ),

              ),



              Container(
                  margin: EdgeInsets.all(30),
                  child: Row(
                    children: [
                      Text(
                        'Recommended',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Text('Show all',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                      )
                    ],
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 130,
                      width: widthScreen*0.8,
                      child: Card(
                        child: Row(
                          children: [
                            SizedBox(
                              height: 130,
                              width: 100,
                              child: Card(
                                color: Colors.blue,
                                child: Image(image: AssetImage('assets/image/image_10.png'),fit: BoxFit.cover,),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Write Fashion hoodie',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text('\$29.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)

                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 130,
                      width: widthScreen*0.8,
                      child: Card(
                        child: Row(
                          children: [
                            SizedBox(
                              height: 130,
                              width: 100,
                              child: Card(
                                color: Colors.blue,
                                child: Image(image: AssetImage('assets/image/image_11.png'),fit: BoxFit.cover,),
                              ),
                            ),
                            Column(
                              children: [
                                Text('Cotton',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text('\30.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)

                              ],
                            )
                          ],
                        ),
                      ),


                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.all(30),
                  child: Row(
                    children: [
                      Text(
                        'Top Collection',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Text('Show all',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue)),
                      )
                    ],
                  )),
              Card(
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.blueGrey.shade50,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('I sale up to 40% ',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('FOR SLIM',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('& BEAUTY',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      SizedBox(width: 150,),
                      Image(image: AssetImage('assets/image/image_12.png')),

                    ],
                  ),

                ),
              ),
              SizedBox(height:  20,),
              Card(
                margin: EdgeInsets.all(10),
                elevation: 5,
                child: Container(
                  height: 180,
                  width: double.infinity,
                  color: Colors.blueGrey.shade50,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('I  Summer Collection 2021',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('Most sexy',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('& fabolous',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('deSign',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      SizedBox(width: 100,),
                      Image(image: AssetImage('assets/image/image_13.png')),

                    ],
                  ),

                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 300,
                      width:250,
                      child: const Card(
                        child: Row(
                          children: [
                            SizedBox(
                              height:300 ,
                              width: 150,
                              child: Card(
                                color: Colors.blue,
                                child: Image(image: AssetImage('assets/image/image_14.png'),fit: BoxFit.cover,),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 50,),
                                Text('T-Shirts',style: TextStyle(fontSize: 10),),
                                Text('The',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text('Office',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text('Life',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)

                              ],
                            )
                          ],
                        ),
                      ),


                    ),
                    Container(
                      height: 300,
                      width: 250,
                      child: Card(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                SizedBox(height: 50,),
                                Text('Dresses'),
                                Text('Elegant',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Text('Design',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)

                              ],
                            ),
                            SizedBox(
                              height: 300,
                              width: 150,
                              child: Card(
                                color: Colors.blue,
                                child: Image(image: AssetImage('assets/image/image_15.png'),fit: BoxFit.cover,),
                              ),
                            ),

                          ],
                        ),
                      ),


                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
