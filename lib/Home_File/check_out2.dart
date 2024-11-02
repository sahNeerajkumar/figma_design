import 'package:figma_design/Home_File/check_out3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckOut2 extends StatefulWidget {
  const CheckOut2({super.key});

  @override
  State<CheckOut2> createState() => _CheckOut2State();
}

class _CheckOut2State extends State<CheckOut2> {
  // int _selectedOption = 0;
  bool isChecked =true;
  @override
  Widget build(BuildContext context) {

    var widthScreen = MediaQuery
        .of(context)
        .size
        .width;
    var heightScreen = MediaQuery
        .of(context)
        .size
        .height;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
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
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Check Out',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 50, 0, 0),
                child: Row(children: [
                  InkWell(
                    onTap: () {},
                    child: Image(
                      image: AssetImage('assets/image/location.png'),
                      height: 25,
                      width: 25,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    '.   .   .  .  .  .',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image(
                      image: AssetImage('assets/image/credit-card.png'),
                      height: 30,
                      width: 30,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '.   .   .  .  .  .',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.grey,
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'STEP 2',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Payment',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
                child: Row(children: [
                  SizedBox(
                    height: 80,
                    width: 120,
                    child: Card(
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Image(
                              image: AssetImage('assets/image/dollar.png'),
                              height: 45,
                              width: 45,
                            ),
                          ),
                          Text('Cash',
                            style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 80,
                    width: 120,
                    child: Card(
                      color: Colors.black,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Image(
                              image: AssetImage('assets/image/credit-card.png'),
                              height: 45,
                              width: 45,
                              color: Colors.white,
                            ),
                          ),
                          Text('Credit Card',
                            style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: 80,
                    width: 120,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Image(
                              image: AssetImage('assets/image/more.png'),
                              height: 45,
                              width: 45,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
                child: Row(children: [
                  Text('Choose your card', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),),
                  Spacer(),
                  Text('Add new+', style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.red),),
                  SizedBox(width: 20,)

                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: [
                        Container(
                          width: widthScreen * 0.9,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(
                                'assets/image/map_card.png')),
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Image(image: AssetImage(
                                        'assets/image/visa.png'),
                                      height: 55,
                                      width: 55,
                                      color: Colors.white,)
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Text(
                                    '4364 1345 8932 8378',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 5,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text(
                                          'CARDHOLDER NAME',
                                          style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          'Sunie Pham',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text(
                                          'VALID THRU',
                                          style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          '05/24',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: widthScreen * 0.9,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(
                                'assets/image/map_card.png')),
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Image(image: AssetImage(
                                        'assets/image/visa.png'),
                                      height: 55,
                                      width: 55,
                                      color: Colors.white,)
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Text(
                                    '4364 1345 8932 8378',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 5,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text(
                                          'CARDHOLDER NAME',
                                          style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          'Sunie Pham',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text(
                                          'VALID THRU',
                                          style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          '05/24',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: widthScreen * 0.9,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(
                                'assets/image/map_card.png')),
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Image(image: AssetImage(
                                        'assets/image/visa.png'),
                                      height: 55,
                                      width: 55,
                                      color: Colors.white,)
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Text(
                                    '4364 1345 8932 8378',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 5,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text(
                                          'CARDHOLDER NAME',
                                          style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          'Sunie Pham',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text(
                                          'VALID THRU',
                                          style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          '05/24',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text('or check out with',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:Row(
                    children: [
                      SizedBox(
                        height:90,
                        width: 150,
                        child: Card(
                          elevation: 10,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(width: 3, color: Colors.black26)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('assets/image/paypal.png'),
                                height: 50,width: 50,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 3, color: Colors.black26)),
                        child: Image(image: AssetImage('assets/image/money.png'),
                          height: 80,
                          width: 150,)
                      ),
                      Card(
                        elevation: 10,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 3, color: Colors.black26)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(child: Image(
                              image: AssetImage('assets/image/visa.png'),
                              height: 80,
                              width: 150,),),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 10,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 3, color: Colors.black26)),
                        child: Column(
                          children: [
                            ClipRRect(child: Image(
                              image: AssetImage('assets/image/alipayImage.png'),
                              height: 80,
                              width: 150,
                              fit: BoxFit.cover,),),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Card(

                          elevation: 10,
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(width: 3, color: Colors.black26)),
                          child: Image(
                          image: AssetImage('assets/image/amex1.png'),
                            width: 150,
                            height: 80,
                          ),
                        ),
                      ),
                    ],
                  ),
                              ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  elevation: 2,
                  child:Column(
                    children: [
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
                      SizedBox(height: 20,),
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
                      SizedBox(height: 20,),
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
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 1.5,
                              child: Checkbox(value: isChecked, onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                                activeColor: Colors.green.shade900,
                                checkColor: Colors.greenAccent,),
                            ),
                            SizedBox(width: 20,),
                            Text('I agree to Terms and conditions',
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                          ],
                        ),),
                      SizedBox(
                        width: widthScreen*0.8,
                        height: 50,
                        child: OutlinedButton(
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CheckOut3(),));
                            },
                            style: OutlinedButton.styleFrom(backgroundColor: Colors.black),
                            child: Text('Place my order',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)),
                      ),
                      SizedBox(height: 50,),

                    ],
                  ),
                ),
              )


            ],
          ),
        ),
      ),


    );
  }
}
// import 'package:flutter/material.dart';
//
// class CheckOut2 extends StatefulWidget {
//   const CheckOut2({super.key});
//
//   @override
//   State<CheckOut2> createState() => _CheckOut2State();
// }
//
// class _CheckOut2State extends State<CheckOut2> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Credit Card
//               Container(
//                 width: 327,
//                 height: 224,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(image: AssetImage('assets/image/map_card.png')),
//                   color: Colors.blueAccent,
//                   borderRadius: BorderRadius.circular(15),
//                   boxShadow: const [
//                     BoxShadow(
//                       color: Colors.black12,
//                       blurRadius: 5,
//                       offset: Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: const Padding(
//                   padding: EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Align(
//                         alignment: Alignment.topRight,
//                         child: Image(image:AssetImage('assets/image/visa.png'),height: 55,width: 55,color: Colors.white,)
//                       ),
//                       Spacer(),
//                       Text(
//                         '4364 1345 8932 8378',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           letterSpacing: 3,
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'CARDHOLDER NAME',
//                                 style: TextStyle(
//                                   color: Colors.white54,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                               Text(
//                                 'Sunie Pham',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'VALID THRU',
//                                 style: TextStyle(
//                                   color: Colors.white54,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                               Text(
//                                 '05/24',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'or check out with',
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 10),
//               // Payment Options
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.network('https://example.com/paypal_logo.png', width: 50),
//                   SizedBox(width: 10),
//                   Image.network('https://example.com/visa_logo.png', width: 50),
//                   SizedBox(width: 10),
//                   Image.network('https://example.com/mastercard_logo.png', width: 50),
//                   SizedBox(width: 10),
//                   Image.network('https://example.com/alipay_logo.png', width: 50),
//                   SizedBox(width: 10),
//                   Image.network('https://example.com/amex_logo.png', width: 50),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
