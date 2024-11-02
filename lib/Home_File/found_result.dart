import 'package:flutter/material.dart';

import 'Product.dart';

class FoundResult extends StatefulWidget {
  const FoundResult({super.key});

  @override
  State<FoundResult> createState() => _FoundResultState();
}

class _FoundResultState extends State<FoundResult> {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,),
        backgroundColor: Colors.white,
        body:Container(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 20,),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Card(
                      color: Colors.white,
                      elevation: 3,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios_new,size:20,),
                      ),
                    ),
                  ),
                  SizedBox(width: 25,),
                  Text('Dresses',style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 25,),
                  Text('Found \n152 Result',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Spacer(),
                  SizedBox(
                    width: 130,
                    height: 60,
                    child: Card(
                      shape:OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(width: 2,color: Colors.lightBlue.shade100)),
                      child: Row(children: [
                        SizedBox(width: 23,),
                        Text('Filter',style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 15,),
                        Icon(Icons.arrow_drop_down,size: 30,),

                      ],),),
                  ),
                  SizedBox(width: 20,)
                ],
              ),
              SizedBox(height: 50,),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: 280,
                                      width: 190,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image(
                                          image: AssetImage('assets/image/image_121.png'),height: 180,width: 150,
                                          fit: BoxFit.cover,

                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        left: 130,
                                        top: 20,
                                        child:Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height:50,
                                              width: 50,
                                              child: Card(
                                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                                child: Column(
                                                  children: [
                                                    SizedBox(height: 10,),
                                                    Center(child: Image(image: AssetImage('assets/image/heart.png'),height: 25,width:30,))
                                                  ],
                                                ),),
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Text('Linen Dress',style: TextStyle(fontWeight: FontWeight.bold),),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('\$52.00',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                    SizedBox(width: 5,),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text('\$45.00'),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Text('(64)')
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 25,),
                          Container(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: 280,
                                      width: 190,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image(
                                          image: AssetImage('assets/image/image_24.png'),height: 180,width: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        left: 130,
                                        top: 20,
                                        child:Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height:50,
                                              width: 50,
                                              child: Card(
                                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                                child: Column(
                                                  children: [
                                                    SizedBox(height: 10,),
                                                    Center(child: Image(image: AssetImage('assets/image/heart2.png'),height: 25,width:30,))
                                                  ],
                                                ),),
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Text('Maxi Dress',style: TextStyle(fontWeight: FontWeight.bold),),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('\$68.00',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star_border),
                                    Text('(46)')
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 25,),
                          Container(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: 280,
                                      width: 190,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image(
                                          image: AssetImage('assets/image/image_26.png'),height: 180,width: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        left: 130,
                                        top: 20,
                                        child:Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height:50,
                                              width: 50,
                                              child: Card(
                                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                                child: Column(
                                                  children: [
                                                    SizedBox(height: 10,),
                                                    Center(child: Image(image: AssetImage('assets/image/heart.png'),height: 25,width:30,))
                                                  ],
                                                ),),
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Text('Ohara Dress',style: TextStyle(fontWeight: FontWeight.bold),),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('\$85.00',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star_border),
                                    Text('(50)')
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 25,),
                          Container(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: 280,
                                      width: 190,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image(
                                          image: AssetImage('assets/image/image_28.png'),height: 180,width: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        left: 130,
                                        top: 20,
                                        child:Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height:50,
                                              width: 50,
                                              child: Card(
                                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                                child: Column(
                                                  children: [
                                                    SizedBox(height: 10,),
                                                    Center(child: Image(image: AssetImage('assets/image/heart2.png'),height: 25,width:30,))
                                                  ],
                                                ),),
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Text('Leaves Green Dress',style: TextStyle(fontWeight: FontWeight.bold),),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('\$64.00',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Text('(83)')
                                  ],
                                )
                              ],
                            ),
                          ),


                        ],
                      ),
                      SizedBox(width: 30,),
                      Column(
                        children: [
                          Container(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: 280,
                                      width: 190,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image(
                                          image: AssetImage('assets/image/image_23.png'),height: 180,width: 150,
                                          fit: BoxFit.cover,

                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        left: 130,
                                        top: 20,
                                        child:Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height:50,
                                              width: 50,
                                              child: Card(
                                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                                child: Column(
                                                  children: [
                                                    SizedBox(height: 10,),
                                                    Center(child: Image(image: AssetImage('assets/image/heart.png'),height: 25,width:30,))
                                                  ],
                                                ),),
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Text('Filted Waist Dress',style: TextStyle(fontWeight: FontWeight.bold),),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('\$47.99',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                    SizedBox(width: 5,),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text('\$45.00'),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Text('(53)')
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 25,),
                          Container(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: 280,
                                      width: 190,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image(
                                          image: AssetImage('assets/image/image_25.png'),height: 180,width: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        left: 130,
                                        top: 20,
                                        child:Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height:50,
                                              width: 50,
                                              child: Card(
                                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                                child: Column(
                                                  children: [
                                                    SizedBox(height: 10,),
                                                    Center(child: Image(image: AssetImage('assets/image/heart.png'),height: 25,width:30,))
                                                  ],
                                                ),),
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Text('Front Tie Mini Dress',style: TextStyle(fontWeight: FontWeight.bold),),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('\$59.00',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star_border),
                                    Text('(38)')
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 25,),
                          Container(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: 280,
                                      width: 190,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image(
                                          image: AssetImage('assets/image/image_27.png'),height: 180,width: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        left: 130,
                                        top: 20,
                                        child:Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height:50,
                                              width: 50,
                                              child: Card(
                                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                                child: Column(
                                                  children: [
                                                    SizedBox(height: 10,),
                                                    Center(child: Image(image: AssetImage('assets/image/heart.png'),height: 25,width:30,))
                                                  ],
                                                ),),
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Text('Tie Back Mini Dress',style: TextStyle(fontWeight: FontWeight.bold),),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('\$67.00',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Text('(38)')
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 25,),
                          Container(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: 280,
                                      width: 190,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image(
                                          image: AssetImage('assets/image/image_29.png'),height: 180,width: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        left: 130,
                                        top: 20,
                                        child:Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height:50,
                                              width: 50,
                                              child: Card(
                                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                                child: Column(
                                                  children: [
                                                    SizedBox(height: 10,),
                                                    Center(child: Image(image: AssetImage('assets/image/heart2.png'),height: 25,width:30,))
                                                  ],
                                                ),),
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Text('Off Shoulder Dress',style: TextStyle(fontWeight: FontWeight.bold),),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('\$78.99',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star_border),
                                    Text('(25)')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height:100,
              )
            ],
          ),

        ) ,
      ),
    );
  }
}
