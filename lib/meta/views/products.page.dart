import 'package:e_com/app/extensions/navi.ext.dart';
import 'package:e_com/app/extensions/widgets.ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:iconsax/iconsax.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(CupertinoIcons.left_chevron),
            onPressed: () {
              context.navigateBack();
            }),
        title: const Text("Macbook air m1 - 1 TB storage"),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              300.boxV,
              const Text(
                "\$299",
                style: TextStyle(fontSize: 40),
              ),
              10.boxV,
              const Text(
                "Macbook air m1 - 1 TB storage",
                style: TextStyle(fontSize: 18),
              ),
              15.boxV,
              Row(
                children: [
                  const Icon(
                    Iconsax.star,
                    color: Colors.redAccent,
                  ),
                  15.boxH,
                  const Text("4.5 ratings")
                ],
              ),
              15.boxV,
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                decoration: ShapeDecoration(
                    color: Colors.grey.shade200, shape: const StadiumBorder()),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Iconsax.mobile),
                    10.boxH,
                    const Text("Electronics")
                  ],
                ),
              ),
              15.boxV,
              const Text("Description",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              10.boxV,
              const Text(
                  "dhasuid iuhdsaui dsadg uhyg dusahgduash guysadg uyag sauyd gsuygsduycg uy8sdgf uysdg uysdgfsduyfguysdfguysdgf sdfgsyd uysd gfuysd uysd uysguysdhg fusgfuysdfv uysd yus uysd fuysd fuysd guysdg fuysd fuysdg sdugfsdg uysdg fuysdyufg sduy sduy g",
                  style: TextStyle(
                    fontSize: 16,
                  )),
              20.boxV,
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      CupertinoIcons.cart,
                      color: Colors.white,
                    ),
                    15.boxH,
                    const Text(
                      "Add to cart",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ).center,
              ),
              20.boxV,
            ],
          ),
        ),
      ),
    );
  }
}
