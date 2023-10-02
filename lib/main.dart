import 'package:all_quotes/util/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(theme: ThemeData(useMaterial3: true),
  debugShowCheckedModeBanner: false,
  routes: screen_routes,));
}