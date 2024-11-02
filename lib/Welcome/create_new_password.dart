import 'package:figma_design/Home_File/home_Page_full.dart';
import 'package:figma_design/Welcome/verification_code.dart';
import 'package:flutter/material.dart';

import '../Home_File/FigmaHomePage.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({super.key});

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 55,
            ),
            Card(
              elevation: 5,
              margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Verification(),
                        ));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    size: 25,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 50, 0, 0),
              child: Text(
                'Create new Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Text(
                'your new password  must be different '
                'from priviously used password  ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.all(25),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'New Password',
                      label: Text('New Password'),
                      suffixIcon: Icon(Icons.visibility_off)),
                )),
            Container(
                margin: EdgeInsets.all(25),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      label: Text('Confirm Password'),
                      suffixIcon: Icon(Icons.visibility)),
                )),
            SizedBox(
              height: 20,
            ),
            Center(
                child: OutlinedButton(
                    onPressed: () {
                      showModalBottomSheet(context: context, builder: (context) {
                        return showButtonSheetWidget();
                      },);
                    },
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.blueGrey),
                    child: Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white),
                    ))),
          ],
        ),
      ),
    );
  }

Widget showButtonSheetWidget(){
var widthScreen =  MediaQuery.of(context).size.width;
var heightScreen = MediaQuery.of(context).size.height;
return Container(
  width: widthScreen,
  height: heightScreen*0.5,
  child: Column(
    children: [
      SizedBox(height: 30,),
      CircleAvatar(
        radius: 50,
        child: ClipOval(
          child:Image(image: AssetImage('assets/image/img.png'),fit: BoxFit.cover,),
        ),

      ),
      SizedBox(height: 20,),
      Text('Your password has been changed',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      Text('Welcome back! Discover now!',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
      SizedBox(height: 50,),
      Center(child: OutlinedButton(onPressed: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FigmaHomePage(),));
      },style: OutlinedButton.styleFrom(minimumSize:Size(widthScreen*0.9, 70),backgroundColor: Colors.black), child: Text('Browse home',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),)))

    ],
  ),
);
}

}
