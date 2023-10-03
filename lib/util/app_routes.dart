import 'package:all_quotes/screen/motivation_quotes.dart';
import 'package:all_quotes/util/quotes_home_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> screen_routes={
  '/': (context) => QuotesHomeScreen(),
  'motivation': (context) => MotivationScreen(),
};