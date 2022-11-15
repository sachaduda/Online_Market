import 'package:flutter/material.dart';
import 'package:market_project/pages/main_page/main_page_widget.dart';
import 'package:market_project/pages/product_page/product_widget.dart';
import 'package:market_project/pages/start_page/start_page_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'start_page': (context) => const StartPageWidget(),
        'main_page': (context) => const MainPageWidget(),
        'main_page/product_page': (context) => const ProductWidget(),
      },
      title: 'Market',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'main_page',
    );
  }
}
