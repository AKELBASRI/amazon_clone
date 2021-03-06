import 'package:meta/meta.dart';

class Product {
  final String id;
  final String title;
  final String image;
  final double price;
  final int rating;

  const Product({
    @required this.id,
    @required this.title,
    @required this.image,
    @required this.price,
    @required this.rating,
  });
}
