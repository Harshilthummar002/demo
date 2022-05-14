// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:scroll_image/data.dart';
// import 'package:scroll_image/next.dart';
// import 'package:scroll_image/page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           // This is the theme of your application.
//           //
//           // Try running your application with "flutter run". You'll see the
//           // application has a blue toolbar. Then, without quitting the app, try
//           // changing the primarySwatch below to Colors.green and then invoke
//           // "hot reload" (press "r" in the console where you ran "flutter run",
//           // or simply save your changes to "hot reload" in a Flutter IDE).
//           // Notice that the counter didn't reset back to zero; the application
//           // is not restarted.
//           primarySwatch: Colors.blue,
//         ),
//         home: page());
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   Widget build(BuildContext context) {
//     int i = data.i;

//     return Scaffold(
//       appBar: AppBar(),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           data.i = data.i + 1;
//           print("i = $i");
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (context) => next(),
//             ),
//           );
//         },
//       ),
//       body: GestureDetector(
//         onVerticalDragUpdate: (details) {
//           int sensitivity = 10;
//           if (details.delta.dy > sensitivity) {
//             // Down Swipe
//             if (i == 2) {
//             } else {
//               setState(() {
//                 i--;
//               });
//             }

//             initState();
//             print("after down s i = $i");
//           } else if (details.delta.dy < -sensitivity) {
//             // Up Swipe
//             if (i == 12) {
//             } else {
//               setState(() {
//                 i++;
//               });
//               initState();
//               print("after up s i = $i");
//             }
//           }
//         },
//         child: Container(
//           height: MediaQuery.of(context).size.height - 300,
//           width: MediaQuery.of(context).size.width - 300,
//           // child: Column(
//           //   mainAxisAlignment: MainAxisAlignment.center,
//           //   crossAxisAlignment: CrossAxisAlignment.center,
//           //   children: [
//             child: Center(child: Image.asset("assates/$i.heic")),
//           //     Row(
//           //       mainAxisAlignment: MainAxisAlignment.center,
//           //       children: [
//           //         IconButton(
//           //             onPressed: () {
//           //               data.i = data.i - 1;
//           //               print("i = $i");
//           //               Navigator.of(context).push(
//           //                 MaterialPageRoute(
//           //                   builder: (context) => next(),
//           //                 ),
//           //               );
//           //             },
//           //             icon: Icon(Icons.arrow_left)),
//           //         IconButton(
//           //             onPressed: () {
//           //               data.i = data.i + 1;
//           //               print("i = $i");
//           //               Navigator.of(context).push(
//           //                 MaterialPageRoute(
//           //                   builder: (context) => next(),
//           //                 ),
//           //               );
//           //             },
//           //             icon: Icon(Icons.arrow_right)),
//           //         // IconButton(onPressed: () {}, icon: Icon(Icons.next_plan)),
//           //         // IconButton(onPressed: () {}, icon: Icon(Icons.next_plan))
//           //       ],
//           //     )
//           //   ],
//           // ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:scroll_image/data.dart';
import 'package:scroll_image/new.dart';
import 'package:scroll_image/next.dart';
import 'package:scroll_image/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: newst());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    int i = data.i;

    return Scaffold(
     body: GestureDetector(
         // int sensitivity = 8;
            // if (details.delta.dy > sensitivity) {
            //   // Down Swipe
            //   if (i != 0) {
            //     setState(() {
            //       i--;
            //     });
            //   }
            //   initState();
            //   print("after down s i = $i");
            // } else if (details.delta.dy < -sensitivity) {
            //   // Up Swipe
            //   if (i != 12) {
            //     setState(() {
            //       i++;
            //     });
            //     print("after up s i = $i");
            //     initState();
            //   }
            // }
       child: Container(
         child: PageView(
           
         ),
       ),
     ),
    );
  }
}
