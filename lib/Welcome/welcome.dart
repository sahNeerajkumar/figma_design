import 'package:flutter/material.dart';

import 'intro.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/image_1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.8), // Overlay color with opacity
        ),
        Positioned(
          bottom: 100,
          left: 50,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Column(
                  children: [
                    Text(
                      'Welcome to GemStore!',
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'The home for a  fashionista',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  SizedBox(
                    width: 202,
                    height: 55,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.blueGrey.shade400),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => IntroPage(),
                              ));
                        },
                        child: Text('Get Started',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white))),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
