import 'package:e_com/app/extensions/navi.ext.dart';
import 'package:e_com/app/extensions/widgets.ext.dart';
import 'package:e_com/core/models/category.model.dart';
import 'package:e_com/meta/views/categories.page.dart';
import 'package:flutter/material.dart';

class CategoryBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: catgories
                .map((e) => Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        height: 50,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              e.icon,
                              size: 23,
                              color: Colors.blue[900],
                            ),
                            15.boxH,
                            Text(e.label)
                          ],
                        ).center,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10)),
                      ).onTap(() {
                        context.navigateTo(CatgoryPage(catgory: e));
                      }),
                    ))
                .toList(),
          )),
    );
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
