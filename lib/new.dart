import 'package:flutter/material.dart';

class newst extends StatefulWidget {
  const newst({Key? key}) : super(key: key);

  @override
  State<newst> createState() => _newstState();
}

class _newstState extends State<newst> {
  List<String> color = ['purple', 'blue', 'green', 'red', 'yellow'];
  bool _slider = false;
  @override
  Widget build(BuildContext context) {
    initState() {
      print("init stare called , Slider is _ $_slider");
    }

    return Scaffold(
      body: GestureDetector(
       onHorizontalDragUpdate: (details) {
         int sanci = 8;
         print("horizontal is call");
          
         if (details.delta.dy > -sanci) {
           setState(() {
             _slider = false;
           });
    
         }else if (details.delta.dy < sanci) {
            setState(() {
              // i++;
              _slider = false;
              print("don swap $_slider");
    
              initState();
            });
            // print("after up s i = $i");
    
          }
       },
        onVerticalDragUpdate: (details) {
          print("vertical is call");
          int sensitivity = 8;
          if (details.delta.dy > sensitivity) {
            // Down Swipe
    
            setState(() {
              // i--;
              _slider = true;
              print("don swap $_slider");
    
              initState();
            });
    
            // print("after down s i = $i");
          } else if (details.delta.dy < -sensitivity) {
            setState(() {
              // i++;
              _slider = true;
              print("don swap $_slider");
    
              initState();
            });
            // print("after up s i = $i");
    
          }
        },
        child: PageView.builder(
            
          scrollDirection: _slider ? Axis.vertical :Axis.horizontal,
          itemCount: color.length,
          itemBuilder: (context, i) {
            
            return Center(
              child: Text("${color[i]}"),
            );
          },
         
        ),
      ),
    );
  }
}
