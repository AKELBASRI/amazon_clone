import 'package:amazon_clone/config/palette.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      child: Stack(children: [
        // ShaderMask(
        //   shaderCallback: (rect) {
        //     return LinearGradient(
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //       colors: [Colors.black, Colors.transparent],
        //     ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
        //   },
        //   blendMode: BlendMode.dstIn,
        //   child: Image.network(
        //     "https://images-eu.ssl-images-amazon.com/images/G/02/digital/video/merch2016/Hero/Covid19/Generic/GWBleedingHero_ENG_COVIDUPDATE__XSite_1500x600_PV_en-GB._CB428684220_.jpg",
        //     height: 400,
        //     width: width,
        //     fit: BoxFit.fill,
        //   ),
        // ),
        Container(
          width: width,
          height: 600,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.transparent]),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://images-eu.ssl-images-amazon.com/images/G/02/digital/video/merch2016/Hero/Covid19/Generic/GWBleedingHero_ENG_COVIDUPDATE__XSite_1500x600_PV_en-GB._CB428684220_.jpg"),
            ),
          ),
        ),
        Positioned(
          top: 350,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.white,
                  Colors.white,
                ],
              ),
            ),
            width: 300,
            height: 400,
          ),
        )
      ]),
    );
  }
}
