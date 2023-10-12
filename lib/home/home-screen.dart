import 'package:flutter/material.dart';
import 'package:news/home/myTheme.dart';

class HomeScreen extends StatelessWidget{
  static const String routeName = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar:  AppBar(
       title: Text(
        'News App',
         style: Theme.of(context).textTheme.titleLarge,
         


       ),
     ),
   );
  }



}