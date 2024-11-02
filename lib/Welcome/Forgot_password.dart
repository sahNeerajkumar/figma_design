import 'dart:ui';

import 'package:figma_design/Welcome/verification_code.dart';
import 'package:flutter/material.dart';

import 'Log_in.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         body: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(height: 55,),
             Card(
               elevation: 5,
               margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
               child: CircleAvatar(
                 radius: 20,
                 backgroundColor: Colors.white,
                 child: IconButton(onPressed: () {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                   }, icon: Icon(Icons.arrow_back_ios_new,size:25,),),),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
               child: Text('Forgot password?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
               child: Text('Enter email associanted with your account '
                   'and we will send email with entructions to '
                   'reset your password ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
             ),
             Container(
                 margin: EdgeInsets.all(25),
                 child: TextField(decoration: InputDecoration(hintText:'enter your email here',prefixIcon:Icon(Icons.email_outlined,color:Colors.tealAccent,) ),)),
             Center(
               child: OutlinedButton(onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>Verification() ,));
               },style:OutlinedButton.styleFrom(minimumSize:Size(150, 45) ) , child: Text('Submit')),
             )

           ],
         ),
      ),
    );
  }
}
