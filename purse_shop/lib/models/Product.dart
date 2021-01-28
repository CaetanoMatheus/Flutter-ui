import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
    this.id,
    this.title,
    this.description,
    this.size,
    this.price,
    this.image,
    this.color,
  );
}
