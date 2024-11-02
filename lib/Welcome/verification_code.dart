import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'Forgot_password.dart';
import 'create_new_password.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword(),));
                }, icon: Icon(Icons.arrow_back_ios_new,size:25,),),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
              child: Text('Verification code',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Text('Enter email associanted with your account '
                  'and we will send email with entructions to '
                  'reset your password ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
            ),
            SizedBox(height: 20,),
            Center(

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Pinput(
                  length: 4,
                  onTap: () {},
                  defaultPinTheme: PinTheme(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:Border.all(color:Colors.blue,width: 1)
                    )
                  ),


                ),
              ),

            ),
            Container(
                margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
                child: Text('Resent in 00.00',style: TextStyle(fontWeight: FontWeight.bold),)),
            SizedBox(height: 20,),
            Center(child: OutlinedButton(onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CreatePassword(),));
            },
                style: OutlinedButton.styleFrom(minimumSize:Size(150, 40)), child: Text('Verify')))

          ],
        ),
      ),
    );
  }
}
