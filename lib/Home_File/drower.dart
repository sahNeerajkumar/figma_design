// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class DrowerPage extends StatelessWidget {
//   // Scaffold ka GlobalKey define karein
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey, // yeh GlobalKey Scaffold mein lagayein
//       appBar: AppBar(
//         title: Text('Right Drawer Button Example'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.access_alarm),
//             onPressed: () {
//               // Button click par endDrawer kholne ke liye
//               _scaffoldKey.currentState!.openEndDrawer();
//             },
//           ),
//         ],
//       ),
//       endDrawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Right Drawer',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               title: Text('Item 1'),
//               onTap: () {
//                 // onTap event
//               },
//             ),
//             ListTile(
//               title: Text('Item 2'),
//               onTap: () {
//                 // onTap event
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Center(
//         child: Text('Press the button to open the right drawer.'),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class DrowerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    var heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: null,
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 350, 0),
            child: SizedBox(
              height: 40,
              width: 40,
              child: Card(
                child: Icon(Icons.arrow_back_ios_new),
              ),
            ),
          ),
          PreferredSize(
              preferredSize: Size.fromHeight(300),
              child: AppBar(

                title: Row(
                  children: [
                    SizedBox(
                      width: widthScreen * 0.7,
                      height: 60,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: 'Search...',
                              prefixIcon: Icon(Icons.search)),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: InkWell(
                          child: Image(
                            image:
                                AssetImage('assets/image/settings-sliders.png'),
                            color: Colors.red,
                            height: 40,
                            width: 40,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
