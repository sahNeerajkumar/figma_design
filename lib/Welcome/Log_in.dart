import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Forgot_password.dart';
import 'Sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text('Login Page')),
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Log Into',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  Text('Your account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(decoration: InputDecoration(hintText: 'Email address'),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(decoration: InputDecoration(hintText: 'Password'),),
                  ),
                  SizedBox(height:20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>ForgotPassword() ,));
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  )

                ],

              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>ForgotPassword(),));
                },
                child: const Text(
                  'LOG IN',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.black,
                    alignment: Alignment(0, 0.3),
                    minimumSize: Size(180, 55)),
              ),
            ),
            SizedBox(height: 10,),
            Center(
                child: Text(
                  'or Log In with',
                  style: TextStyle(fontSize: 12, color: Colors.brown),
                )),
            SizedBox(height: 35,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                        child: Image.asset(
                          'assets/image/apple-logo.png',
                          fit: BoxFit.cover,
                          width: 28,
                          height: 28,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
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
                        child: Image.asset(
                          'assets/image/google.png',
                          fit: BoxFit.cover,
                          width: 28,
                          height: 28,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
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
                        child: Image.asset(
                          'assets/image/facebook-app-symbol.png',color: Colors.blue,
                          fit: BoxFit.cover,
                          width: 28,
                          height: 28,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: heightScreen*0.2,),
            Center(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have account?',style: TextStyle(fontSize: 20),),
                SizedBox(width: 5,),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp(),));
                  },
                  child:const Text('Sign Up',style: TextStyle(fontSize: 18,decoration: TextDecoration.underline,color: Colors.blue),),
                )
              ],
            )

            )
          ],
        ),
      ),
    );
  }
}
