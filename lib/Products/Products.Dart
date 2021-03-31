import 'package:amazon_clone/Products/src/ProductItem.dart';
import 'package:amazon_clone/config/palette.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:amazon_clone/data/data.Dart';
import 'package:responsive_image/responsive_image.dart';
import 'package:smart_grid_view/smart_grid_view.dart';

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
          child: ResponsiveImage(
            srcSet: {
              64: "https://images-eu.ssl-images-amazon.com/images/G/02/digital/video/merch2016/Hero/Covid19/Generic/GWBleedingHero_ENG_COVIDUPDATE__XSite_1500x600_PV_en-GB._CB428684220_.jpg",
              128: "Assets/cover128png",
              256: "Assets/cover256.png",
              512: "Assets/cover512.png",
              1024: "Assets/cover1024.png",
            },
            scalePreference: ScalePreference.Upper,
          ),
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //       begin: Alignment.topCenter,
          //       end: Alignment.bottomCenter,
          //       colors: [Colors.white, Colors.transparent]),
          //   image: DecorationImage(
          //     alignment: Alignment(-1, -1),
          //     fit: BoxFit.cover,
          //     image: NetworkImage(
          //         "https://images-eu.ssl-images-amazon.com/images/G/02/digital/video/merch2016/Hero/Covid19/Generic/GWBleedingHero_ENG_COVIDUPDATE__XSite_1500x600_PV_en-GB._CB428684220_.jpg"),
          //   ),
          // ),
        ),
        Positioned(
          top: 330,
          left: 20,
          right: 20,
          bottom: 8,
          child: Container(
            width: width,
            height: height,
            child: SmartGridView(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              tileWidth: 308,
              tileHeight: 268,
              children: products
                  .map((index) => ProductItem(
                        title: index.title,
                        image: index.image,
                        price: index.price.toString(),
                        rating: index.rating,
                      ))
                  .toList(),
              // ResponsiveGridList(

              //     desiredItemWidth: 300,
              //     minSpacing: 10,
              //     children: products.map((i) {
              //       return Container(
              //         height: 350,
              //         alignment: Alignment(0, 0),
              //         color: Colors.white,
              //         child: Text(i.title),
              //       );
              //     }).toList()),
              // ResponsiveGridRow(children: getproducts()),
            ),
          ),
        )
      ]),
    );
  }
}
