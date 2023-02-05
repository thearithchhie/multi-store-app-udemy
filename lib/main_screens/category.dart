import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:multi_store_app/categories/beauty_category.dart';
import 'package:multi_store_app/categories/kids_category.dart';
import 'package:multi_store_app/utilities/categ_list.dart';
import 'package:multi_store_app/widgets/fake_search.dart';

import '../categories/accessories_category.dart';
import '../categories/bags_category.dart';
import '../categories/electronices_category.dart';
import '../categories/home_garden_category.dart';
import '../categories/men_category.dart';
import '../categories/shoes_category.dart';
import '../categories/women_category.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

List<ItemsData> items = <ItemsData>[
  ItemsData(label: 'men'),
  ItemsData(label: 'women'),
  ItemsData(label: 'shoes'),
  ItemsData(label: 'bags'),
  ItemsData(label: 'electronics'),
  ItemsData(label: 'accessories'),
  ItemsData(label: 'home & garden'),
  ItemsData(label: 'kids'),
  ItemsData(label: 'beauty'),
];

class _CategoryScreenState extends State<CategoryScreen> {
  final PageController _pageController = PageController();

  //* I use this when we tab to other page (reset to top page)
  @override
  void initState() {
    super.initState();
    for(var element in items) {
      element.isSelected = false;
    }
    setState(() {
      items[0].isSelected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const FakeSearch(),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: sideNavigator(size),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: categoryView(size),
          )
        ],
      ),
    );
  }

  Widget sideNavigator(Size size) {
    return SizedBox(
      width: size.width * 0.2,
      height: size.height * 0.8,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: ((context, index) {
          final data = items.elementAt(index);
          return GestureDetector(
            onTap: () {
              // _pageController.jumpToPage(index);
              _pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceInOut);
              // for(var element in items) {
              //   element.isSelected = false;
              // }
              // setState(() {
              //   data.isSelected = true;
              // });
            },
            child: Container(
              color:
                  data.isSelected == true ? Colors.white : Colors.grey.shade300,
              height: 100,
              child: Center(child: Text('${data.label}')),
            ),
          );
        }),
      ),
    );
  }

  Widget categoryView(Size size) {
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.8,
      color: Colors.white,
      child: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          for (var element in items) {
            element.isSelected = false;
          }
          setState(() {
            items[value].isSelected = true;
          });
        },
        scrollDirection: Axis.vertical,
        children: [
          MenCategory(),
          const WomenCategory(),
          const ShoesCategory(),
          const BagsCategory(),
          const ElectronicCategory(),
          const AccessoriesCategory(),
          const HomeGardenCategory(),
          const  KidsCategory(),
          const BeautyCategory(),
        ],
      ),
    );
  }
}
