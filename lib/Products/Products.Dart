import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(children: [
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
    ]);
  }
}

class PaintDemo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var startPoint = Offset(0, 0);
    var controlPoint1 = Offset(size.width / 2, 0);
    var controlPoint2 = Offset(size.width / 2, size.height);
    var endPoint = Offset(size.width, size.height);

    var path = Path()
      ..moveTo(startPoint.dx, startPoint.dy)
      ..cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
          controlPoint2.dy, endPoint.dx, endPoint.dy);

    canvas.save();

    canvas.drawPaint(
      Paint()
        ..shader = ui.Gradient.linear(
          Offset(size.width / 2, 0),
          Offset(size.width / 2, size.height),
          [
            Color(0xFF32D74B),
            Color(0xFFFF453A),
          ],
        ),
    );

    canvas.restore();

    canvas.saveLayer(
      Rect.fromLTRB(0, 0, size.width, size.height),
      Paint()..blendMode = BlendMode.dstIn,
    );

    canvas.drawPath(
        path,
        Paint()
          ..isAntiAlias = true
          ..color = Colors.orange
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3);

    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
