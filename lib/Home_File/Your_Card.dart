import 'package:flutter/material.dart';

import 'check_out.dart';

class YourCard extends StatefulWidget {
  const YourCard({super.key});

  @override
  State<YourCard> createState() => _YourCardState();
}

class _YourCardState extends State<YourCard> {
  bool isChecked =true;

  @override
  Widget build(BuildContext context) {

    var widthScreen = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 20,),
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
                            child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_back_ios_new)))
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 100,),
                Text('Your Card',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
              ],
            ),
            Column(
              children: [
               Container(
                 height: 150,
                 margin: EdgeInsets.all(5),
                 width: widthScreen*1.0,
                 child: Card(
                   child: Row(
                     children: [
                       SizedBox(
                         child: Image(image: AssetImage('assets/image/image_30.png'),fit: BoxFit.cover),
                       ),
                       SizedBox(width: 20,),
                       SizedBox(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(
                               children: [
                                 Text('Sportwear Set',style: TextStyle(fontWeight: FontWeight.bold),),
                                 SizedBox(width: 150,),
                                 Checkbox(value: isChecked, onChanged: (bool? value) {
                                   setState(() {
                                     isChecked = value!;
                                   });
                                 },
                                   activeColor: Colors.green.shade900,
                                   checkColor: Colors.greenAccent,
                                 ),
                               ],
                             ),
                             Row(
                               children: [
                                 Text('\$80.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                               ],
                             ),
                             Row(
                               children: [
                                 Text('Size:L |Color:Green'),
                                 SizedBox(width: 68,),
                                 SizedBox(
                                   height: 40,
                                   width: 100,
                                   child: Card(
                                     shape: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.red),borderRadius: BorderRadius.circular(50)),
                                     child: Row(
                                     children: [
                                       SizedBox(width: 10,),
                                     Image(image: AssetImage('assets/image/minus.png'),width: 20,height: 20,),
                                     SizedBox(width: 10,),
                                     Text('1'),
                                       SizedBox(width: 10,),
                                     Icon(Icons.add),
                                   ],),),
                                 ),
                               ],
                             ),
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
               ),

              ],
            ),

            Column(
              children: [
               Container(
                 height: 150,
                 margin: EdgeInsets.all(10),
                 width: widthScreen*1.0,
                 child: Card(
                   child: Row(
                     children: [
                       Container(
                         height: 155,
                         width: 120,
                         child: ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                         child: Image(image: AssetImage('assets/image/image_6.png'),fit: BoxFit.cover,alignment: Alignment.centerLeft,),
                         ),
                       ),
                       SizedBox(width: 20,),
                       SizedBox(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(
                               children: [
                                 Text('Turtleneck Sweater',style: TextStyle(fontWeight: FontWeight.bold),),
                                 SizedBox(width: 80,),
                                 Checkbox(value: isChecked, onChanged: (bool? value) {
                                   setState(() {
                                     isChecked = value!;
                                   });
                                 },
                                   activeColor: Colors.green.shade900,
                                   checkColor: Colors.greenAccent,
                                 ),
                               ],
                             ),
                             Row(
                               children: [
                                 Text('\$39.99',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                               ],
                             ),
                             Row(
                               children: [
                                 Text('Size:M |Color:White'),
                                 SizedBox(width: 30,),
                                 SizedBox(
                                   height: 40,
                                   width: 100,
                                   child: Card(
                                     shape: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.red),borderRadius: BorderRadius.circular(50)),
                                     child: Row(
                                     children: [
                                       SizedBox(width: 10,),
                                     Image(image: AssetImage('assets/image/minus.png'),width: 20,height: 20,),
                                     SizedBox(width: 10,),
                                     Text('1'),
                                       SizedBox(width: 10,),
                                     Icon(Icons.add),
                                   ],),),
                                 ),
                               ],
                             ),
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
               ),

              ],
            ),
            Column(
              children: [
               Container(
                 height: 150,
                 margin: EdgeInsets.all(5),
                 width: widthScreen*1.0,
                 child: Card(
                   child: Row(
                     children: [
                       Container(
                         height: 155,
                         width: 130,
                         child: ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                         child: Image(image: AssetImage('assets/image/image_11.png'),fit: BoxFit.cover,alignment: Alignment.centerLeft,),
                         ),
                       ),
                       SizedBox(width: 20,),
                       SizedBox(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(
                               children: [
                                 Text('Cotton T-shirt',style: TextStyle(fontWeight: FontWeight.bold),),
                                 SizedBox(width: 120,),
                                 Checkbox(value: isChecked, onChanged: (bool? value) {
                                   setState(() {
                                     isChecked = value!;
                                   });
                                 },
                                   activeColor: Colors.green.shade900,
                                   checkColor: Colors.greenAccent,
                                 ),
                               ],
                             ),
                             Row(
                               children: [
                                 Text('\$30.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                               ],
                             ),
                             Row(
                               children: [
                                 Text('Size:L |Color:Black'),
                                 SizedBox(width: 40),
                                 SizedBox(
                                   height: 40,
                                   width: 100,
                                   child: Card(
                                     shape: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Colors.red),borderRadius: BorderRadius.circular(50)),
                                     child: Row(
                                     children: [
                                       SizedBox(width: 10,),
                                     Image(image: AssetImage('assets/image/minus.png'),width: 20,height: 20,),
                                     SizedBox(width: 10,),
                                     Text('1'),
                                       SizedBox(width: 10,),
                                     Icon(Icons.add),
                                   ],),),
                                 ),
                               ],
                             ),
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
               ),

              ],
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                SizedBox(width: 20,),
                Text('Product price'),
                Spacer(),
                Text('\$110',style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 20,)
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Divider(height: 2,),
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                SizedBox(width: 20,),
                Text('Shipping '),
                Spacer(),
                Text('Freeship',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 20,)
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Divider(height: 2,),
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                SizedBox(width: 20,),
                Text('Subtotal',style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                Text('\$110',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 20,)
              ],
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: widthScreen*0.8,
              height: 50,
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOut(),));
                  },
                  style: OutlinedButton.styleFrom(backgroundColor: Colors.black),
                  child: Text('Proceed to checkout',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)),
            )

          ],
        ),
      ),

    );
  }
}
