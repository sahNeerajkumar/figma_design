import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Sign_up.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
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
    var heightScreen = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    height: heightScreen * 0.6,
                    color: Colors.white,
                  ),
                  Container(
                    height: heightScreen * 0.4,
                    color: Colors.black87,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white.withOpacity(0.2),
              height:heightScreen*1.0,
              child: Column(
                children: [
                  Expanded(child: PageView(
                    controller: _controller,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(height: 100,),
                            Text('Discover something new',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            Text('Special new arrivals just for you',style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(height: 35,),
                            SizedBox(
                              height: 450,
                              width: 300,
                              child: Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child:Column(
                                  children: [
                                    Image(image: AssetImage('assets/image/image_2.png',),height: 350,fit: BoxFit.cover,),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(height: 100,),
                            Text('Update trendy outfit',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            Text('Favorite bronds and hottest trends',style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(height: 35,),
                            SizedBox(
                              height: 450,
                              width: 300,
                              child: Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child:Column(
                                  children: [
                                    Image(image: AssetImage('assets/image/image_3.png',),height: 350,fit: BoxFit.cover,),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(height: 100,),
                            Text('Explore you true style',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            Text('Relax and let us bring the style to you',style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(height: 35,),
                            SizedBox(
                              height: 450,
                              width: 300,
                              child: Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child:Column(
                                  children: [
                                    Image(image: AssetImage('assets/image/image_4.png',),height: 350,fit: BoxFit.cover,),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],

                  ),),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 250),
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: ScaleEffect(
                          dotHeight: 8, dotWidth: 8, dotColor: Colors.white),
                    ),
                  ),
                ],

              ),
            ),
            Positioned(
              left: 140,
              bottom: 80,
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 60,
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    backgroundColor: Colors.blueGrey.shade400,
                                    side:
                                        BorderSide(width: 2, color: Colors.white)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignUp(),
                                      ));
                                },
                                child: Text('Shopping now',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white))),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
