// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// class page extends StatefulWidget {
//   const page({Key? key}) : super(key: key);

//   @override
//   State<page> createState() => _pageState();
// }

// class _pageState extends State<page> {
//   @override

//   Widget build(BuildContext context) {
// PageController pageController = PageController(initialPage: 0);
//   print(" fsdfsjjsyds ${pageController.toString()}");
//     return Container(
//       child: PageView(
//         scrollDirection: Axis.vertical,

//         controller: pageController,

//         children: [
//           PageView(
//             scrollDirection: Axis.horizontal,

//             controller: pageController,

//             children: [
//           Image.asset("assates/2.heic"),
//           Image.asset("assates/3.heic"),
//           Image.asset("assates/4.heic"),
//           Image.asset("assates/5.heic"),
//           Image.asset("assates/6.heic"),
//           Image.asset("assates/7.heic"),
//           Image.asset("assates/8.heic"),
//           Image.asset("assates/9.heic"),
//           Image.asset("assates/10.heic"),
//           Image.asset("assates/11.heic"),
//             ],
//           ),
//           Image.asset("assates/2.heic"),
//           Image.asset("assates/3.heic"),
//           Image.asset("assates/4.heic"),
//           Image.asset("assates/5.heic"),
//           Image.asset("assates/6.heic"),
//           Image.asset("assates/7.heic"),
//           Image.asset("assates/8.heic"),
//           Image.asset("assates/9.heic"),
//           Image.asset("assates/10.heic"),
//           Image.asset("assates/11.heic"),
//         ],

//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  int i = 0;
  PageController pageControllerh = PageController();
  PageController pageControllerv = PageController();

  @override
  void initState() {
    super.initState();
  
    pageControllerh.addListener(() {
      print("offSet ===== ${pageControllerh.offset}");
      print("page is af: $i");
      if(pageControllerh.offset == 0.0){
        print("page is ==0 af : $i");
        pageControllerh.jumpToPage(i);
      }
      // else{
      //   i = pageControllerv.page!.toInt();
      // }

    });

    pageControllerv.addListener(() {
    setState(() {
      i = pageControllerv.page!.toInt();
    });
      
      print("page is : $i");
    });
  
   
  }
  
  @override
  Widget build(BuildContext context) {
    // PageController pageController = PageController(initialPage: 1);
    // print(" fsdfsjjsyds ${pageController.toString()}");
    return SizedBox(
        child: PageView(
          controller:pageControllerh ,
          scrollDirection: Axis.horizontal,
          
          
      children: [
      
        PageView.builder(
          scrollDirection: Axis.vertical,
          controller: pageControllerv,
          itemCount: 12,
           itemBuilder: ((context, i) {
            return Container(
              child: Image.asset("assates/$i.heic"),
            );
          }),
        
        ),

        PageView.builder(
          controller: pageControllerv,
         scrollDirection: Axis.vertical,
          itemBuilder: ((context, i) {
            return Image.asset("assates/$i.heic");
          }),
      
        ),

      PageView.builder(
          controller: pageControllerv,
         scrollDirection: Axis.vertical,
          itemBuilder: ((context, i) {
            return Image.asset("assates/$i.heic");
          }),
      
        ),



      ],
    ));
  }
}
