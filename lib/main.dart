import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:personal/change_password.dart';
import 'package:personal/forget_password.dart';
import 'package:personal/login.dart';

import 'register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
     
      ),
      home:   ForgetPassword(),
    );
  }
}

// class MyHomePage extends StatefulWidget {

// @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   final List<Widget> imgList = [

//     Padding(
//       padding: EdgeInsets.only(right: 25,left: 25),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           LottieBuilder.network('https://assets9.lottiefiles.com/packages/lf20_pi5ctutg.json',
//           height: 230,
//           ),

//           Container(
//             alignment: Alignment.center,
//               padding: EdgeInsets.only(top: 10),
//             child: Text(
//               "Got a cute dog?",
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Color.fromRGBO(51, 87, 85, 1),
//               ),
//             ),
//           ),

//           Container(
//             alignment: Alignment.center,
//             padding: EdgeInsets.only(top: 10),
//             child: Text(
//               "We are all about Dogs",
//               style: TextStyle(
//                 fontSize: 15,
//                 color: Colors.grey[500]
//               ),
//             ),
//           ),

//           Padding(
//             padding: EdgeInsets.only(
//               right: 25.0,
//               left: 25.0
//             ),

//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Lottie.network('https://assets9.lottiefiles.com/packages/lf20_Q1pZ8v.json',
//                   height: 230),
//                   Container(
//                     alignment: Alignment.center,
//                     padding: EdgeInsets.only(top: 10),
//                     child: Text(
//                       "Certified pet Food",
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: Color.fromRGBO(51,87,85,1),
//                       ),
//                     ),
//                   ),
//                   Center(
//                     child: Container(
//                       alignment: Alignment.center,
//                       padding: EdgeInsets.only(top: 10),
//                       child: Text(
//                         "You and your pet are invited to the roam"
//                       ),
//                     ),

//                   )
//                 ],
//               ),
                
//             ),
//             // end of first padding

//             Padding(
//             padding: EdgeInsets.only(
//               right: 25.0,
//               left: 25.0
//             ),

//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Lottie.network('https://assets9.lottiefiles.com/packages/lf20_Q1pZ8v.json',
//                   height: 230),
//                   Container(
//                     alignment: Alignment.center,
//                     padding: EdgeInsets.only(top: 10),
//                     child: Text(
//                       "Pet friendly aisle",
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: Color.fromRGBO(51,87,85,1),
//                       ),
//                     ),
//                   ),
//                   Center(
//                     child: Container(
//                       alignment: Alignment.center,
//                       padding: EdgeInsets.only(top: 10),
//                       child: Text(
//                         ""
//                       ),
//                     ),

//                   )
//                 ],
//               ),
                
//             ),
//             // end of second padding

//             Padding(
//             padding: EdgeInsets.only(
//               right: 25.0,
//               left: 25.0
//             ),

//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Lottie.network('https://assets9.lottiefiles.com/packages/lf20_Q1pZ8v.json',
//                   height: 230),
//                   Container(
//                     alignment: Alignment.center,
//                     padding: EdgeInsets.only(top: 10),
//                     child: Text(
//                       "Certified pet Food",
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: Color.fromRGBO(51,87,85,1),
//                       ),
//                     ),
//                   ),
//                   Center(
//                     child: Container(
//                       alignment: Alignment.center,
//                       padding: EdgeInsets.only(top: 10),
//                       child: Text(
//                         "You and your pet are invited to the roam"
//                       ),
//                     ),

//                   )
//                 ],
//               ),
                
//             ),

//         ],
//       ),
//       ),
      

//   ];

//     @override
//   Widget build(BuildContext context) {
   
//     return Scaffold(
//       appBar: AppBar(
       
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      
//         title: Text("title"),
//       ),
//       body: SingleChildScrollView(
        
//         child: Column(
//           children: [
//             returnLogo(),
//             returnAppName(),
//             returnPetStoreIntroduction(),
//             returnGoogleSignButton(),
//             returnOtherLoginOptionButtons(),
//           ],
//         ),
       
      
//       ),
//     //  / This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
  
//   returnLogo() {
//     return Padding(
//       padding: EdgeInsets.only(top: 60,bottom: 5),
//       child: CircleAvatar(
//         radius: 45,
//         backgroundColor: Colors.white,
//         backgroundImage: NetworkImage("https://images.unsplash.com/photo-1679056788786-243f3a141bd0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),

//       ),
//       );
//   }
  
//   returnAppName() {
//     return Column(
//       children: [
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               "pets zone",
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.brown
//               ),
//               )
//           ],
//         )
//       ],
//     );
//   }
  
//   returnPetStoreIntroduction() {
//     return Container(
//       margin: EdgeInsets.only(bottom: 10),
//       child: CarouselSlider(
//         items: imgList.map((item) => Container(
//           child: Center(child: item,),
//         )).toList(),

//          options: CarouselOptions(
//           height: 340,
//           enlargeCenterPage: true,
//           scrollDirection: Axis.horizontal,
//           autoPlay: true,
//           autoPlayInterval: Duration(seconds: 5),
//           autoPlayAnimationDuration: Duration(milliseconds: 3000),
//          )
//          ),
//     );
//   }
  
//   returnGoogleSignButton() {
//     return OutlinedButton(
//       onPressed: () async{},
//        child:Padding(
//         padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
//        child: Row(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image(image: AssetImage("assets/search.png"), height: 25.0,),
//           Padding(
//             padding: EdgeInsets.only(left: 10),
//             child: Text(
//               "Sign-in to browse store",
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w500,
//                 color: Colors.blueAccent,
//               ),
//               ),
//             )
//         ],
//        )
//         )
//        );
//   }
  
//   returnOtherLoginOptionButtons() {
//     return Padding(
//       padding: EdgeInsets.only(bottom: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextButton(
//             onPressed: (){},
//              child: Text("Sign-In with email",
//              style: TextStyle(
//               color: Colors.blueAccent,
//               fontWeight: FontWeight.w500,
//               fontSize: 15
//              ),),
             
//              ),

//              Container(
//               width: 2,
//               height: 20,
//               color: Colors.grey[300],
//              ),

//              TextButton(
//             onPressed: (){},
//              child: Text("Guest Sign-Up",
//              style: TextStyle(
//               color: Colors.blueAccent,
//               fontWeight: FontWeight.w500,
//               fontSize: 15
//              ),),
             
//              ),


//         ],
//       ),
//       );
//   }


// }
