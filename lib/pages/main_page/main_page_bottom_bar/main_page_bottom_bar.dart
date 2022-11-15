import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final ValueSetter<int> onPressed;
  final int selectedIndex;

  const BottomNavigationBarWidget(
      {super.key, required this.onPressed, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: BottomNavigationBar(
        selectedItemColor: const Color(0xFFFF6E4E),
        unselectedItemColor: const Color(0xFFB3B3C3),
        currentIndex: selectedIndex,
        onTap: onPressed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
