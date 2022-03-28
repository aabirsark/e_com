import 'package:e_com/app/extensions/navi.ext.dart';
import 'package:e_com/app/extensions/widgets.ext.dart';
import 'package:e_com/meta/views/add_product.admin.page.dart';
import 'package:e_com/meta/views/orders.admin.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AmazonAdmin extends StatelessWidget {
  const AmazonAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.menu,
              color: Colors.black,
            )),
        title: const Text(
          "Amazon Seller",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            shrinkWrap: true,
            // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //     crossAxisCount: 2),
            children: const [
              SellerCard(
                icon: CupertinoIcons.add,
                label: "Add product",
                child: AddProduct(),
              ),
              SellerCard(
                icon: CupertinoIcons.cart,
                label: "Orders",
                child: AdminOrderPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SellerCard extends StatelessWidget {
  const SellerCard({
    Key? key,
    required this.icon,
    required this.label,
    required this.child,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: Colors.indigo,
            ),
            15.boxV,
            Text(
              label,
              style: const TextStyle(fontSize: 18),
            )
          ],
        ).center,
      ).onTap(() {
        context.navigateTo(child);
      }).center,
    );
  }
}
