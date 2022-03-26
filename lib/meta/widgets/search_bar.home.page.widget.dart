import 'package:e_com/app/extensions/widgets.ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.93,
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          const Icon(CupertinoIcons.search),
          10.boxH,
          TextFormField(
            style: const TextStyle(fontSize: 15),
            decoration: const InputDecoration(
                border: InputBorder.none, hintText: "Search a product"),
          ).expanded,
        ],
      ),
    ).center;
  }

  @override
  double get maxExtent => 70;

  @override
  double get minExtent => 70;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
