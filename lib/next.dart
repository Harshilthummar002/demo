import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scroll_image/data.dart';
class next extends StatefulWidget {
  



  State<next> createState() => _nextState();
}

class _nextState extends State<next> {

  int i = data.i;
  final controller = PageController(initialPage: data.i );
  @override
  Widget build(BuildContext context) {
    initState() {
      
    }

  //   Future<Image> Getdata() {
  //       return Future.delayed(Duration(seconds: 2), () {
  //           return Image.asset("assates/$i");
  //   // throw Exception("Custom Error");
  // },);
  //   }
    return Scaffold(
        appBar: AppBar(),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     data.i = data.i + 1;
        //     print("i = $i");
        //     initState();
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) => next(),
        //       ),
        //     );
        //   },
        // ),
        body: GestureDetector(
          onVerticalDragUpdate: (details) {
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
            int sensitivity = 10;
            
          if (details.delta.dy > sensitivity) {
          
            // Down Swipe
            if (i == 2) {
              print("i = $i");
            } else {
               print("i = $i");
              setState(() {
                i = i-1;
                
                initState();
              });
             
            }

           
            print("after down s i = $i");
          } else if (details.delta.dy < -sensitivity) {
            // Up Swipe
            if (i == 12) {
              print("i = $i");
            } else {
              print("i = $i");
              setState(() {
                i = i+1;
               
                initState();
              });
              
              
              print("after up s i = $i");
            }
          }
          },

          
          child: Center(
        child: PageView(controller: controller,
       children:[
          Container(
            padding: EdgeInsets.all(8),
          height: MediaQuery.of(context).size.height,
          color: Colors.amberAccent,
         
             child: Column(
               children: [
                 Text("$i"),
                 Image.asset("assates/$i.heic"),
               ],
             ),
          ),
       ]
        
        )        
      ),
          // Container(margin: EdgeInsets.all(9),
          // padding: EdgeInsets.all(8),
          // height: MediaQuery.of(context).size.height,
          // color: Colors.amberAccent,
          //   child: Image.asset("assates/$i.heic"),
          // ),
        ),);
  }
}





  