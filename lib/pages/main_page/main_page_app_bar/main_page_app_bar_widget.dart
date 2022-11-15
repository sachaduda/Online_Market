import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.location_on_outlined,
              color: Color.fromRGBO(255, 110, 78, 1),
            ),
            SizedBox(
              width: 10,
            ),
            AppBarDropdownWidget()
          ],
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 35, 10),
          child: Icon(
            Icons.filter_alt_outlined,
            color: Colors.black,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AppBarDropdownWidget extends StatefulWidget {
  const AppBarDropdownWidget({super.key});

  @override
  State<AppBarDropdownWidget> createState() => _AppBarDropdownWidgetState();
}

class _AppBarDropdownWidgetState extends State<AppBarDropdownWidget> {
  String _selectedCity = 'Russia, Moscow';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        alignment: Alignment.center,
        items: <String>[
          'Russia, Moscow',
          'Russia, Kaliningrad',
          'Russia, Novgorod'
        ].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black),
            ),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _selectedCity = value.toString();
          });
        },
        value: _selectedCity,
      ),
    );
  }
}
