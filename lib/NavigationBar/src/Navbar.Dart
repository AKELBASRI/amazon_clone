import 'package:amazon_clone/config/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/NavigationBar/src/SearchBar.Dart';
import 'package:amazon_clone/NavigationBar/src/CompanyName.Dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      color: Palette.navBackground,
      child: Row(
        children: [
          CompanyName(),
          SizedBox(
            width: 12,
          ),
          Expanded(flex: 2, child: SearchBar()),
          SizedBox(
            width: 12,
          ),
          Text(
            'Hello,\nSign in',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            'Returs,\nOrders',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_basket,
                color: Colors.white,
              ),
              Text(
                "0",
                style: TextStyle(
                    color: Palette.colornumberbasket,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }
}
