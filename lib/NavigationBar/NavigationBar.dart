import 'package:amazon_clone/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/NavigationBar/src/Navbar.Dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Navbar(),
        ],
      ),
    );
  }
}
