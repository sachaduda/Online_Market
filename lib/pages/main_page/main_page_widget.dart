import 'package:flutter/material.dart';
import 'main_page_app_bar/main_page_app_bar_widget.dart';
import 'main_page_bottom_bar/main_page_bottom_bar.dart';
import 'main_page_category/main_page_category_widget.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({super.key});

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = [CategoryWidget(), Text('sds')];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: SingleChildScrollView(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        onPressed: onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
