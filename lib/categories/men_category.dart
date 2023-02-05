import 'package:flutter/material.dart';
import 'package:multi_store_app/utilities/categ_list.dart';

import '../minor_screens/sub_category_product.dart';

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
                      return GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubCategoryProduct(
                                    subCategoryName: men[index],
                                    mainCategoryName: 'men'))),
                        child: Column(
                          children: [
                            SizedBox(
                                width: 70,
                                height: 70,
                                child: Image(
                                  image: AssetImage('images/men/men$index.jpg'),
                                )),
                            Text(men[index])
                          ],
                        ),
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
          child: SizedBox(
            width: size.height * 0.03,
             height: size.height * 0.8,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Container(  
                decoration: BoxDecoration(
                  color: Colors.brown.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        '<<',
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 10
                        ),
                      ),
                      Text(
                        'men'.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.brown,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 10
                        ),
                      ),
                      const Text(
                        '>>',
                        style: TextStyle(
                          color: Colors.brown,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 10
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CategoryHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const CategoryHeaderLabel({
    required this.headerLabel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Text(
        headerLabel,
        style: const TextStyle(
            letterSpacing: 1.5,
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
