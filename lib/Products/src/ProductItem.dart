import 'package:amazon_clone/config/palette.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String title;
  final String price;
  final int rating;
  final String image;
  const ProductItem({Key key, this.title, this.price, this.rating, this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: GridTile(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$title'),
              Text(
                '\$$price',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              ratingStars(rating),
              Center(
                child: Image.network(
                  '${image}',
                  width: 200,
                  height: 200,
                  filterQuality: FilterQuality.medium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Center(
                  child: InkWell(
                    onTap: () => {},
                    child: Container(
                      width: 130,
                      height: 25,
                      decoration: Palette.boxDecorationButtonaddTobasket,
                      child: Center(child: Text('Add to cart')),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget ratingStars(int ratingnumber) {
  return Row(
    children: [for (int i = 0; i < ratingnumber; i++) Text('⭐')],
  );
}
