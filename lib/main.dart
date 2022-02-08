// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyBulb();
  }
}

class MyBulb extends StatefulWidget {
  const MyBulb({Key? key}) : super(key: key);

  @override
  _MyBulbState createState() => _MyBulbState();
}

class _MyBulbState extends State<MyBulb> {
  bool isTurnOn=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
         title:Text('Glowing') ,
         backgroundColor: Colors.lightBlueAccent,
         centerTitle: true,

       ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Icon(isTurnOn?Icons.lightbulb:Icons.lightbulb_outlined,
                size: 150,
                color: isTurnOn?Colors.limeAccent:null,
              ),
            ),
            ElevatedButton(onPressed: (){
              print('button Pressed');
              setState(() {
                isTurnOn=!isTurnOn;
              });
            }, child: Text(!isTurnOn?'Turn On':'Turn Off'))
          ],
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Center(
//                 child: TextButton(
//                     onPressed: () {
//                       print('text button pressed');
//                     },
//                     onLongPress: () {
//                       print("ji");
//                     },
//                     child: Text(
//                       'Text Button',
//                       style: TextStyle(color: Colors.red),
//                     )),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   print('Elevated button');
//                 },
//                 style: ButtonStyle(
//                     backgroundColor:
//                         MaterialStateProperty.all(Colors.lightGreen)),
//                 child: TextButton(
//                     onPressed: () {
//                       print('text button pressed');
//                     },
//                     onLongPress: () {
//                       print("ji");
//                     },
//                     child: Text(
//                       'Text Button',
//                       style: TextStyle(color: Colors.red),
//                     )),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   print('Elevated 2 button');
//                 },
//                 // s
//                 // resolveWith((states)=>states.contains(MaterialState.pressed)&&Color.purple)
//
//                 child: TextButton(
//                     onPressed: () {
//                       print('Elevated 2 button pressed');
//                     },
//                     onLongPress: () {
//                       print("Elevated 2 long button pressed");
//                     },
//                     child: Text(
//                       'Elevated 2 Button',
//                       style: TextStyle(color: Colors.blueGrey),
//                     )),
//                 style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.resolveWith((states) =>
//                       states.contains(MaterialState.pressed)
//                           ? Colors.red
//                           : Colors.white),
//                 ),
//               ),
//               OutlinedButton(
//                 onPressed: () {
//                   print('Outlined button ');
//                 },
//                 child: TextButton(
//                     onPressed: () {
//                       print('Elevated 2 button pressed');
//                     },
//                     onLongPress: () {
//                       print("Elevated 2 long button pressed");
//                     },
//                     child: Text(
//                       'Outlined button ',
//                       style: TextStyle(color: Colors.red),
//                     )),
//                 style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.resolveWith((states) =>
//                       states.contains(MaterialState.pressed)
//                           ? Colors.red
//                           : Colors.white),
//                 ),
//               ),
//               IconButton(
//                 onPressed: () => print("VOLUME"),
//                 icon: Icon(Icons.volume_down_outlined),
//                 color: Colors.purple,
//                 iconSize: 28,
//               )
//             ],
//             // mainAxisAlignment: MainAxisAlignment.center,
//             // children: [
//             // SizedBox(
//             //   child: (Card(
//             //       color: Colors.white,
//             //       shadowColor: Colors.white,
//             //       child: Column(
//             //         children: [
//             //           Container(
//             //             height: 90,
//             //             width: 90,
//             //             margin: new EdgeInsets.symmetric(vertical: 15.0),
//             //             decoration: BoxDecoration(
//             //                 borderRadius: BorderRadius.circular(150),
//             //                 border: Border.all(
//             //                     color: Colors.cyan.shade800,
//             //                     width: 3 // red as border color
//             //                     ),
//             //                 image: DecorationImage(
//             //                   image: AssetImage('image/mypic.jpg'),
//             //                   fit: BoxFit.cover,
//             //                 )),
//             //           ),
//             //           Text(
//             //             "Ali-Raza",
//             //             style: TextStyle(
//             //               fontSize: 18,
//             //               fontWeight: FontWeight.w800,
//             //               color: Colors.black38,
//             //               fontFamily: 'Quintessential',
//             //             ),
//             //           ),
//             //           Text(
//             //             "Software Engineer",
//             //             style: TextStyle(
//             //               fontSize: 18,
//             //               color: Colors.grey,
//             //               fontFamily: 'Quintessential',
//             //             ),
//             //           ),
//             //           Container(
//             //             height: 35,
//             //             width: 145,
//             //             decoration: BoxDecoration(
//             //               border: Border(
//             //                 bottom: BorderSide(
//             //                   width: 3.0,
//             //                   color: Colors.yellow.shade200,
//             //                 ),
//             //               ),
//             //               // color: Colors.white,
//             //             ),
//             //           ),
//             //           Container(
//             //             child: Icon(
//             //               Icons.format_quote_outlined,
//             //               color: Colors.yellow,
//             //               size: 42,
//             //             ),
//             //           ),
//             //           Container(
//             //               child: Padding(
//             //             padding: const EdgeInsets.all(20.3),
//             //             child: (Text(
//             //               "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available",
//             //               overflow: TextOverflow.ellipsis,
//             //               maxLines: 5,
//             //               textAlign: TextAlign.center,
//             //             )),
//             //           )),
//             //           Container(
//             //             child: Icon(
//             //               Icons.format_quote_outlined,
//             //               color: Colors.yellow,
//             //               size: 42,
//             //             ),
//             //           )
//             //         ],
//             //       ))),
//             // ),
//
//             // Container(
//             //   height: 60,
//             //   width: 60,
//             //   decoration: BoxDecoration(
//             //       borderRadius: BorderRadius.circular(150),
//             //       image: DecorationImage(
//             //         image: AssetImage('image/mypic.jpg'),
//             //         fit: BoxFit.cover,
//             //       )),
//             // ),
//             // Text(
//             //   "Ali-Raza",
//             //   style: TextStyle(
//             //     fontSize: 18,
//             //     fontWeight: FontWeight.w800,
//             //     color: Colors.black38,
//             //     fontFamily: 'Quintessential',
//             //   ),
//             // ),
//             // Text(
//             //   "Software Engineer",
//             //   style: TextStyle(
//             //     fontSize: 18,
//             //     color: Colors.grey,
//             //     fontFamily: 'Quintessential',
//             //   ),
//             // ),
//             // Container(
//             //   height: 35,
//             //   width: 145,
//             //   decoration: BoxDecoration(
//             //     border: Border(
//             //       bottom: BorderSide(
//             //         width: 3.0,
//             //         color: Colors.yellow.shade200,
//             //       ),
//             //     ),
//             //     // color: Colors.white,
//             //   ),
//             // ),
//             // Container(
//             //   child: Icon(
//             //     Icons.format_quote_outlined,
//             //     color: Colors.yellow,
//             //     size: 42,
//             //   ),
//             // ),
//             // Container(
//             //     child: (Text(
//             //   "n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available",
//             //   textAlign: TextAlign.left,
//             //   overflow: TextOverflow.ellipsis,
//             //   maxLines: 3,
//             // ))),
//             // Container(
//             //   child: Icon(
//             //     Icons.format_quote_outlined,
//             //     color: Colors.yellow,
//             //     size: 42,
//             //   ),
//             // )
//             // ],
//           ),
//         ),
//         floatingActionButton:FloatingActionButton(
//           onPressed: ()=>print("hello"),
//           child: Icon(Icons.add),
//           splashColor: Colors.grey,
//           backgroundColor: Colors.purpleAccent,
//         ),
//             floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//             // IconButton(icon: Icon(Icons.add),
//             //     iconSize: 48,
//             //
//             //     onPressed: () => print("-----")),
//
//         // backgroundColor: Colors.black,
//         // body: SafeArea(
//         //   child: Column(
//         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //     children: [
//         //       // Row(
//         //       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //       //   children: [
//         //       //     Container(
//         //       //       child: Icon(Icons.pets_outlined,
//         //       //           color: Colors.yellow, size: 40),
//         //       //       height: 185,
//         //       //       width: 185,
//         //       //       color: Colors.red,
//         //       //     ),
//         //       //     Container(
//         //       //       child: Icon(Icons.restart_alt_outlined,
//         //       //           color: Colors.yellow, size: 40),
//         //       //       // Icon(
//         //       //       //   Icons.restart_alt_outlined,
//         //       //       // ),
//         //       //       height: 185,
//         //       //       width: 185,
//         //       //       color: Colors.green,
//         //       //     )
//         //       //   ],
//         //       // ),
//         //       // SizedBox(
//         //       //   height: 190,
//         //       //   width: 400,
//         //       //   child: Card(
//         //       //     color: Colors.white,
//         //       //     elevation: 20,
//         //       //     shadowColor: Colors.white,
//         //       //     child: Row(
//         //       //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         //       //       children: [
//         //       //         Container(
//         //       //           width: 144,
//         //       //           height: 144,
//         //       //           decoration: BoxDecoration(
//         //       //             boxShadow: [
//         //       //               BoxShadow(
//         //       //                   color: Colors.yellow,
//         //       //                   spreadRadius: 25,
//         //       //                   blurRadius: 15)
//         //       //             ],
//         //       //             color: Colors.white,
//         //       //             borderRadius: BorderRadius.circular(150),
//         //       //             border: Border.all(color: Colors.black, width: 4),
//         //       //             image: DecorationImage(
//         //       //               image: AssetImage('image/bulb.jpg'),
//         //       //               fit: BoxFit.cover,
//         //       //             ),
//         //       //           ),
//         //       //         ),
//         //       //         Column(
//         //       //           mainAxisAlignment: MainAxisAlignment.center,
//         //       //
//         //       //           children: [
//         //       //             Text(
//         //       //               "Idea!!",
//         //       //               style: TextStyle(
//         //       //                 fontSize: 24,
//         //       //                 color: Colors.lightGreen,
//         //       //                 fontFamily: 'Quintessential',
//         //       //               ),
//         //       //             ),
//         //       //             LimitedBox(
//         //       //               maxHeight: 60,
//         //       //               maxWidth: 120,
//         //       //               child: ListTile(
//         //       //               horizontalTitleGap: 0,
//         //       //                 minLeadingWidth: 30,
//         //       //                 leading: Icon(
//         //       //                   Icons.facebook,
//         //       //                   color: Colors.red,
//         //       //
//         //       //                 ),
//         //       //                 title: Text(
//         //       //                   "@Idea",
//         //       //                   style: TextStyle(
//         //       //                     color: Colors.blue,
//         //       //                     fontSize: 15,
//         //       //                   ),
//         //       //                 ),
//         //       //               ),
//         //       //             )
//         //       //
//         //       //             // Icon(Icons.dark_mode_outlined,
//         //       //             //     color: Colors.yellow, size: 40),
//         //       //             // Text('facebook')
//         //       //           ],
//         //       //         ),
//         //       //       ],
//         //       //     ),
//         //       //   ),
//         //       // ),
//         //       // Row(
//         //       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //       //   children: [
//         //       //     Container(
//         //       //       child: Icon(Icons.star_rate_outlined,
//         //       //           color: Colors.yellow, size: 40),
//         //       //       height: 185,
//         //       //       width: 185,
//         //       //       color: Colors.pink,
//         //       //     ),
//         //       //     Container(
//         //       //       child: Icon(Icons.insights_outlined,
//         //       //           color: Colors.yellow, size: 40),
//         //       //       // Icon(
//         //       //       //   Icons.insights_outlined,
//         //       //       // ),
//         //       //       height: 185,
//         //       //       width: 185,
//         //       //       color: Colors.purple,
//         //       //     )
//         //       //   ],
//         //       // )
//         //     ],
//         //   ),
//         // )
//       ),
//     );
//   }
// }
