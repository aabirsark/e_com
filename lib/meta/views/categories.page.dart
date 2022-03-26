import 'package:e_com/app/extensions/navi.ext.dart';
import 'package:e_com/app/extensions/widgets.ext.dart';
import 'package:e_com/core/models/category.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CatgoryPage extends StatelessWidget {
  const CatgoryPage({Key? key, required this.catgory}) : super(key: key);

  final Category catgory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () {
            context.navigateBack();
          },
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.search_normal))
        ],
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [Icon(catgory.icon), 15.boxH, Text(catgory.label)],
        ),
      ),
    );
  }
}
