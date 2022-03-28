import 'package:e_com/app/extensions/widgets.ext.dart';
import 'package:e_com/core/models/category.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("add Product"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            20.boxV,
            const PosterPIckerAdmin(),
            40.boxV,
            TextFormField(
              decoration:
                  const InputDecoration(filled: true, hintText: "Title"),
            ),
            20.boxV,
            TextFormField(
              decoration:
                  const InputDecoration(filled: true, hintText: "Description"),
            ),
            20.boxV,
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  filled: true, hintText: "Price (in dollars)"),
            ),
            30.boxV,
            const Align(
                alignment: Alignment.centerLeft, child: Text("Category")),
            20.boxV,
            SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: catgories
                      .map((e) => Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
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
                            ),
                          ))
                      .toList(),
                )),
            30.boxV,
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Iconsax.add,
                    color: Colors.white,
                  ),
                  10.boxH,
                  const Text(
                    "Add product",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ).center,
            )
          ],
        ).center,
      ),
    );
  }
}

class PosterPIckerAdmin extends StatelessWidget {
  const PosterPIckerAdmin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey.shade200),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            CupertinoIcons.add,
            color: Colors.green,
            size: 30,
          ),
          10.boxV,
          const Text("Add Poster")
        ],
      ).center,
    );
  }
}
