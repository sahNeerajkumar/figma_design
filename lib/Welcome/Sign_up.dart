import 'package:figma_design/Welcome/Log_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text('Sign Up')),
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Create',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  Text('Your account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(decoration: InputDecoration(hintText: 'Enter your name'),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(decoration: InputDecoration(hintText: 'Email address'),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(decoration: InputDecoration(hintText: 'Password'),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(decoration: InputDecoration(hintText: 'Confirm Password'),),
                  ),
                ],
                
              ),
            ),
            SizedBox(height: 30,),
            //Button Sign Up
            Center(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                },
                child: const Text(
                  'Sign Up',
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
              'or sign up with',
              style: TextStyle(fontSize: 12, color: Colors.brown),
            )),
            SizedBox(height: 50,),
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

            SizedBox(height: heightScreen*0.1,),
            Center(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have account?',style: TextStyle(fontSize: 20),),
                SizedBox(width: 5,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                  },
                  child:const Text('Log In',style: TextStyle(fontSize: 18,decoration: TextDecoration.underline,color: Colors.blue),),
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
