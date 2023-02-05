import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SubCategoryProduct extends StatelessWidget {
  final String subCategoryName;
  final String mainCategoryName;
  const SubCategoryProduct({required this.subCategoryName, required this.mainCategoryName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(subCategoryName, style: TextStyle(color: Colors.black),),
      ),
      body: Center(child: Text(mainCategoryName)),
    );
  }
}
