import 'package:e_com/app/extensions/widgets.ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LocationBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 50,
      color: Colors.grey.shade100,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          const Icon(
            CupertinoIcons.location,
            color: Colors.redAccent,
          ),
          10.boxH,
          const Text("495006 Bilaspur, CG"),
          const Spacer(),
          const Icon(Iconsax.edit)
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
