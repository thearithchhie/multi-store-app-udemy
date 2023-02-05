import 'package:flutter/material.dart';
import 'package:multi_store_app/utilities/categ_list.dart';
import '../widgets/category_widgets.dart';

class HomeGardenCategory extends StatelessWidget {
  const HomeGardenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: SizedBox(
            width: size.width * 0.75, // 5%
            height: size.height * 0.8, // 80%
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CategoryHeaderLabel(headerLabel: 'Home & Garden'),
                SizedBox(
                  height: size.height * 0.68,
                  child: GridView.count(
                    mainAxisSpacing: 70,
                    crossAxisSpacing: 15,
                    crossAxisCount: 3,
                    children: List.generate(homeandgarden.length, (index) {
                      return SubCategoryModel(
                        mainCategoryName: 'homeandgarden',
                        subCategoryName: homeandgarden[index],
                        assetName: 'images/homegarden/home$index.jpg',
                        subCategoryLabel: homeandgarden[index],
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SliderBar(mainCategoryName: 'homeandgarden', size: size),
        )
      ],
    );
  }
}


