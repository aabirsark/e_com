import 'package:e_com/app/extensions/widgets.ext.dart';
import 'package:e_com/core/models/category.model.dart';
import 'package:e_com/meta/widgets/category_bar.home.page.widget.dart';
import 'package:e_com/meta/widgets/location_bar.home.page.widget.dart';
import 'package:e_com/meta/widgets/product_card.uni.widget.dart';
import 'package:e_com/meta/widgets/search_bar.home.page.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends HookWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final isScrolled = useState(false);

    scrollController.addListener(
      () => {
        if (scrollController.offset > 150)
          isScrolled.value = true
        else
          isScrolled.value = false
      },
    );

    return Scaffold(
      floatingActionButton: isScrolled.value
          ? FloatingActionButton(
              onPressed: () {
                scrollController.animateTo(0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn);
              },
              backgroundColor: Colors.cyan,
              child: const Icon(Iconsax.arrow_up),
            )
          : null,
      body: SafeArea(
        child: CustomScrollView(
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              elevation: isScrolled.value ? 1.0 : 0.0,
              toolbarHeight: 60,
              actions: [
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: isScrolled.value ? 1.0 : 0.0,
                  child: IgnorePointer(
                    ignoring: !isScrolled.value,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.search,
                          color: Colors.black,
                        )),
                  ),
                )
              ],
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Iconsax.menu,
                    color: Colors.black,
                  )),
              backgroundColor: Colors.white,
              title: const Text(
                "Amazon",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              centerTitle: false,
            ),
            SliverPersistentHeader(delegate: SearchBar()),
            SliverPersistentHeader(delegate: LocationBar()),
            SliverPersistentHeader(delegate: CategoryBar()),
            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ProductCard(),
                        )),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: .55, crossAxisCount: 2))
          ],
        ),
      ),
    );
  }
}
