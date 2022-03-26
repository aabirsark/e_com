import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';

class Category {
  final String label;
  final IconData icon;
  Category({
    required this.label,
    required this.icon,
  });
}

List<Category> catgories = [
  Category(label: "Clothings", icon: FontAwesomeIcons.shirt),
  Category(label: "Electronics", icon: Iconsax.mobile),
  Category(label: "Books", icon: Iconsax.book),
  Category(label: "Groceries", icon: CupertinoIcons.cart),
];
