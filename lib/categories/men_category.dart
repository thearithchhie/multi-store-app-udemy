import 'package:flutter/material.dart';
import 'package:multi_store_app/utilities/categ_list.dart';
import '../widgets/category_widgets.dart';

class MenCategory extends StatelessWidget {
  MenCategory({Key? key}) : super(key: key);

  // var imageTry = [
  //   '/Users/thearith/project/udemy/multi_store_app/images/try/image0.jpg',
  //   '/Users/thearith/project/udemy/multi_store_app/images/try/image1.jpg',
  //   '/Users/thearith/project/udemy/multi_store_app/images/try/image2.jpg',
  //   '/Users/thearith/project/udemy/multi_store_app/images/try/image3.jpg',
  // ];

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
                const CategoryHeaderLabel(headerLabel: 'Men'),
                SizedBox(
                  height: size.height * 0.68,
                  child: GridView.count(
                    mainAxisSpacing: 70,
                    crossAxisSpacing: 15,
                    crossAxisCount: 3,
                    children: List.generate(men.length, (index) {
                      return SubCategoryModel(
                        mainCategoryName: 'men',
                        subCategoryName: men[index],
                        assetName: 'images/men/men$index.jpg',
                        subCategoryLabel: men[index],
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
          child: SliderBar(mainCategoryName: 'men', size: size),
        )
      ],
    );
  }
}


