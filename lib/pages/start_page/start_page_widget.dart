import 'package:flutter/material.dart';

class StartPageWidget extends StatelessWidget {
  const StartPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: ColoredBox(
          color: const Color(0xFF010035),
          child: SizedBox.expand(
            child: Center(
              child: Stack(
                children: [
                  Container(
                    height: 132,
                    width: 132,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFF6E4E),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(34, 45, 0, 0),
                    child: Text(
                      'Eccomerce Concept',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        onTap: () => {Navigator.pushNamed(context, 'main_page')},
      ),
    );
  }
}
