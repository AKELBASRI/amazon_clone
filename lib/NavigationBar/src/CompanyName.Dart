import 'package:flutter/material.dart';

class CompanyName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Image.asset(
        'assets/amazon.png',
        height: 100,
        width: 100,
        filterQuality: FilterQuality.medium,
      ),
    );
  }
}
