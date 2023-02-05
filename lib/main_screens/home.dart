import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

import '../minor_screens/search.dart';
import '../widgets/fake_search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          title: FakeSearch(),
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.yellow,
            indicatorWeight: 3,
            tabs: [
              Tab(
                child: Text('Man', style: TextStyle(color: Colors.grey.shade600)),
              ),
              Tab(
                child: Text('Women', style: TextStyle(color: Colors.grey.shade600)),
              ),
              Tab(
                child: Text('Shoes', style: TextStyle(color: Colors.grey.shade600)),
              ),
              Tab(
                child: Text('Bags', style: TextStyle(color: Colors.grey.shade600)),
              ),
              Tab(
                child: Text('Electronic', style: TextStyle(color: Colors.grey.shade600)),
              ),
              Tab(
                child: Text('Accessories', style: TextStyle(color: Colors.grey.shade600)),
              ),
              Tab(
                child: Text('Home & Garden', style: TextStyle(color: Colors.grey.shade600)),
              ),
              Tab(
                child: Text('Kids', style: TextStyle(color: Colors.grey.shade600)),
              ),
              Tab(
                child: Text('Beauty', style: TextStyle(color: Colors.grey.shade600)),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            RepeatedTab(label: 'Man'),
            RepeatedTab(label: 'Women'),
            RepeatedTab(label: 'Shoes'),
            RepeatedTab(label: 'Bags'),
            RepeatedTab(label: 'Electronic'),
             RepeatedTab(label: 'Accessories'),
            RepeatedTab(label: 'Home & Garden'),
            RepeatedTab(label: 'Kids'),
            RepeatedTab(label: 'Beauty'),
          ],
        ),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  const RepeatedTab({
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(label),
    );
  }
}