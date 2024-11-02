import 'package:flutter/material.dart';

class CheckOut3 extends StatefulWidget {
  const CheckOut3({super.key});

  @override
  State<CheckOut3> createState() => _CheckOut3State();
}

class _CheckOut3State extends State<CheckOut3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
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
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(50, 50, 0, 0),
            //   child: Row(children: [
            //     InkWell(
            //       onTap: () {},
            //       child: Image(
            //         image: AssetImage('assets/image/location.png'),
            //         height: 25,
            //         width: 25,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 40,
            //     ),
            //     Text(
            //       '.   .   .  .  .  .',
            //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            //     ),
            //     SizedBox(
            //       width: 20,
            //     ),
            //     InkWell(
            //       onTap: () {},
            //       child: Image(
            //         image: AssetImage('assets/image/credit-card.png'),
            //         height: 30,
            //         width: 30,
            //         color: Colors.black,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 20,
            //     ),
            //     Text(
            //       '.   .   .  .  .  .',
            //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            //     ),
            //     SizedBox(
            //       width: 20,
            //     ),
            //     Icon(
            //       Icons.check_circle,
            //       color: Colors.grey,
            //     ),
            //   ]),
            // ),
          ],
        ),
      ),
    );
  }
}
