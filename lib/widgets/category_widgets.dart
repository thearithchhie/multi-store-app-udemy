import 'package:flutter/material.dart';

import '../minor_screens/sub_category_product.dart';

class SliderBar extends StatelessWidget {
  final String mainCategoryName;
  final Size size;
  const SliderBar({
    required this.size,
    required this.mainCategoryName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                mainCategoryName == 'beauty'
                ? const Text('')
                : const Text(
                  '<<',
                  style: style,
                ),
                Text(
                  mainCategoryName.toUpperCase(),
                  style: style,
                ),
                mainCategoryName == 'men'
                ? const Text('')
                : const Text(
                  '>>',
                  style: style,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const style = TextStyle(
                    color: Colors.brown,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 10
                  );

class SubCategoryModel extends StatelessWidget {
  final String mainCategoryName;
  final String subCategoryName;
  final String assetName;
  final String subCategoryLabel;
  const SubCategoryModel({
    required this.mainCategoryName,
    required this.subCategoryName,
    required this.assetName,
    required this.subCategoryLabel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SubCategoryProduct(
                  subCategoryName: subCategoryName,
                  mainCategoryName: mainCategoryName))),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
                width: 70,
                height: 70,
                child: Image(
                  image: AssetImage(assetName),
                )),
            Text(subCategoryLabel)
          ],
        ),
      ),
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