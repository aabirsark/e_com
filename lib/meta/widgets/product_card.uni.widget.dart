import 'package:e_com/app/extensions/navi.ext.dart';
import 'package:e_com/app/extensions/widgets.ext.dart';
import 'package:e_com/meta/views/products.page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade300,
      ),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          var height = constraints.maxHeight;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 10.boxV,
              Container(
                width: double.infinity,
                height: height * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
              ),
              12.boxV,
              const Text(
                "\$299",
                style: TextStyle(fontSize: 24, color: Colors.purple),
              ),
              5.boxV,

              const Text(
                "Macbook air m1 - 1 TB storage",
                maxLines: 2,
                style: TextStyle(fontSize: 18),
              ),
              const Spacer(),
              Row(
                children: [
                  const Icon(
                    Iconsax.star,
                    color: Colors.redAccent,
                  ),
                  10.boxH,
                  const Text("4.5 ratings")
                ],
              ),
              5.boxV
            ],
          );
        },
      ),
    ).onTap(() {
      context.navigateTo(const ProductPage());
    });
  }
}
