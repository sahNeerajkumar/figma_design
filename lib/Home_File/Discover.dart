import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Search2.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    // var heightScreen = MediaQuery.of(context).size.height;
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
               'Discover',
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
       body:  Column(
         children: [
           SizedBox(height: 20,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               SizedBox(
                   width: widthScreen*0.8,
                   height: 60,
                   child: Card(
                     child: TextField(decoration:
                     InputDecoration(prefixIcon: InkWell(onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage2(),));
                     },child: Icon(Icons.search)),border: OutlineInputBorder(borderSide: BorderSide.none),
                         hintText: 'Search..'),),)
               ),
               SizedBox(
                   width: 60,
                   height: 60,
                   child: Card(
                     child: Column(
                       children: [
                         SizedBox(height: 10,),
                         InkWell(
                           onTap: () {
                           },child: Image(image: AssetImage('assets/image/settings-sliders.png'),height: 30,width: 30,),
                         )

                       ],
                     ),

                   )
               ),
             ],),
           Expanded(
               child: SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child: Column(
               children: [
                 ExpansionTile(
                   trailing: SizedBox.shrink(),
                   title: SizedBox(
                     width: 120,
                     height: 150,
                     child: Card(
                       color: Colors.brown.shade100,
                       child: Row(
                         children: [
                           SizedBox(width: 20,),
                         Text('CLOTHING',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                         Spacer(),
                         Image(image:AssetImage('assets/image/image_16.png'),height: 150,width: 200,fit: BoxFit.cover,),
                       ],
                       ),
                     ),
                   ),
                   children: [
                     Column(
                       children: [
                        SizedBox(
                          height:100,
                          child: Card(
                            elevation: 2,
                            margin: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text('Jacket',style: TextStyle(fontSize: 25, color: Colors.black),),
                                ),
                                SizedBox(width: 120,),
                                Text('128 Items',style: TextStyle(fontSize: 20,),),
                                SizedBox(width: 20,),
                                InkWell(onTap: () {},
                                child:Icon(Icons.arrow_forward_ios))
                            ],),
                          ),
                        ),
                        SizedBox(
                          height:100,
                          child: Card(
                            elevation: 2,
                            margin: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text('Skirts',style: TextStyle(fontSize: 25, color: Colors.black),),
                                ),
                                SizedBox(width: 120,),
                                Text('40 Items',style: TextStyle(fontSize: 20,),),
                                SizedBox(width: 20,),
                                InkWell(onTap: () {},
                                child:Icon(Icons.arrow_forward_ios))
                            ],),
                          ),
                        ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Dresses',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('36 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Sweaters',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('36 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Jeans',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('14 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('T-Shirts',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('12 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Pants',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('9 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),

                       ],
                     )
                   ],
                 ),
                 ExpansionTile(
                   trailing: SizedBox.shrink(),
                   title: SizedBox(
                     width: 120,
                     height: 150,
                     child: Card(
                       color: Colors.brown.shade200,
                       child:Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 20),
                             child: Text('ACCESSORIES',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                           ),
                           Image(image:AssetImage('assets/image/parsh_17.png'),height: 150,width: 200,),
                         ],
                       ),
                     ),
                   ),
                   children: [
                     Column(
                       children: [
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Jacket',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('128 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Skirts',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('40 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Dresses',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('36 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Sweaters',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('36 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Jeans',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('14 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('T-Shirts',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('12 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Pants',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('9 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),

                       ],
                     )
                   ],
                 ),
                 ExpansionTile(
                   trailing: SizedBox.shrink(),
                   title: SizedBox(
                     width: 120,
                     height: 150,
                     child: Card(
                       color: Colors.black38,
                       child: Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 20),
                             child: Text('SHOES',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                           ),
                           SizedBox(width: 30,),
                           Image(image:AssetImage('assets/image/shoes_w_18.png'),),
                         ],
                       ),
                     ),
                   ),
                   children: [
                     Column(
                       children: [
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Jacket',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('128 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Skirts',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('40 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Dresses',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('36 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Sweaters',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('36 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Jeans',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('14 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('T-Shirts',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('12 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Pants',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('9 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                 
                       ],
                     )
                   ],
                 ),
                 ExpansionTile(
                   trailing: SizedBox.shrink(),
                   title: SizedBox(
                     width: 120,
                     height: 150,
                     child: Card(
                       color: Colors.black45,
                       child: Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 20),
                             child: Text('COLLECTION',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 86),
                             child: Image(image:AssetImage('assets/image/image_19.png'),),
                           ),
                         ],
                       ),
                     ),
                   ),
                   children: [
                     Column(
                       children: [
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Jacket',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('128 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Skirts',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('40 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Dresses',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('36 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Sweaters',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('36 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Jeans',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('14 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('T-Shirts',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('12 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),
                         SizedBox(
                           height:100,
                           child: Card(
                             elevation: 2,
                             margin: EdgeInsets.all(10),
                             child: Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 50),
                                   child: Text('Pants',style: TextStyle(fontSize: 25, color: Colors.black),),
                                 ),
                                 SizedBox(width: 120,),
                                 Text('9 Items',style: TextStyle(fontSize: 20,),),
                                 SizedBox(width: 20,),
                                 InkWell(onTap: () {},
                                     child:Icon(Icons.arrow_forward_ios))
                               ],),
                           ),
                         ),

                       ],
                     )
                   ],
                 ),

               ],
             ),
           ))
         ],
       ),
     ), 
    );
  }
  Widget showButtonSheet(){
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Container(
       height:heightScreen*0.9,
      width: widthScreen*0.9,
      child: ListView(
        children: [

        ],
      ),
    );

  }
}


