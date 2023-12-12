// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lsb_organization/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage());

    //   String data = '123';
    //   return MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: Scaffold(
    //       backgroundColor: Colors.deepPurple[200],
    //       body: Center(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: [
    //             GestureDetector(
    //               onTap: () {
    //                 print('312');
    //               },
    //               child: Container(
    //                 height: 300,
    //                 width: 300,
    //                 decoration: BoxDecoration(
    //                     color: Colors.deepPurple[400],
    //                     borderRadius: BorderRadius.circular(20)),
    //                 child: Column(
    //                   children: [
    //                     Icon(
    //                       Icons.home,
    //                       color: Colors.white,
    //                       size: 200,
    //                     ),
    //                     Text(
    //                       data,
    //                       style: const TextStyle(
    //                           fontWeight: FontWeight.bold,
    //                           fontSize: 40,
    //                           color: Colors.white),
    //                     )
    //                   ],
    //                 ),
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //       appBar: AppBar(
    //         title: Text(
    //           "Welcome to lsb org",
    //           textAlign: TextAlign.center,
    //           overflow: TextOverflow.ellipsis,
    //           style: const TextStyle(
    //               fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
    //         ),
    //         backgroundColor: Colors.deepPurple,
    //         leading: Icon(
    //           Icons.menu,
    //           color: Colors.white,
    //         ),
    //         actions: [
    //           IconButton(
    //               onPressed: () {},
    //               icon: Icon(
    //                 Icons.logout,
    //                 color: Colors.white,
    //               ))
    //         ],
    //       ),
    //     ),
    //   );
    // }
  }
}
