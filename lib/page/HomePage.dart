import 'package:flutter/material.dart';
import 'package:news/widgets/Business.dart';
import 'package:news/widgets/NavigatorBar.dart';
import 'package:news/widgets/Sport.dart';
import 'package:news/widgets/Tech.dart';

import 'package:news/widgets/World.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            leading: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 25,
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(top: 10, right: 10),
                child: Icon(
                  Icons.search,
                  size: 28,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.amber,
              child: const TabBar(
                isScrollable: true,
                indicatorColor: Colors.red,
                indicatorWeight: 5,
                labelStyle:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                tabs: [
                  SizedBox(
                    width: 70,
                    child: Tab(
                      child: Text('Trending'),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                    child: Tab(
                      child: Text('Word'),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                    child: Tab(
                      child: Text('Business'),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                    child: Tab(
                      child: Text('Sports'),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                    child: Tab(
                      child: Text('Tech'),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(children: [
                Container(color: Colors.amber),
                
                World(),
                Business(),
                Sport(),
                Tech(),
              ]),
            )
          ],
        ),
        bottomNavigationBar: const NavigatorBar(),
      ),
    );
  }
}
