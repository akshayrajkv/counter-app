import 'package:counterapp/view/home_screen.dart';
import 'package:counterapp/viewmodel/counterviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [

      ChangeNotifierProvider(create: (context) => Counterviewmodel(),)
    ],
    child:const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),)
    ;
  }
}