import 'package:flutter/material.dart';

import '../minor_screens/search.dart';

class FakeSearch extends StatelessWidget {
  const FakeSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen())),
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.yellow, width: 1.4),
          borderRadius: BorderRadius.circular(25)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.search, color: Colors.grey),
                ),
                Text(
              'What are you looking for ?',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey
              ),
            ),
              ],
            ),
            Container(
              width: 75,
              height: 32,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(25)
              ),
              child: const Center(
                child: Text('Search',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
                ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}