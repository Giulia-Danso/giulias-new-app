import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Scrollingscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomScrollViewClass(),
    );
  }
}

class CustomScrollViewClass extends StatefulWidget {
  @override
  ScrollingScreenViewStream createState() => ScrollingScreenViewStream();
}

class ScrollingScreenViewStream extends State<CustomScrollViewClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Custom Scrolling View"),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.orange,
              alignment: Alignment.center,
              height: 200,
              child: const Text("Welcome to Scroll Screen"),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: Colors.pink[100 * (index % 9)],
                  child: Text("Grid Item $index"),
                );
              },
              childCount: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              color: Colors.amber,
              alignment: Alignment.center,
              child: const Card(
                child: Text("Flutter Business Card"),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 100,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 100,
                    child: Card(
                      color: Colors.cyan[100 * (index % 9)],
                      child: Text("I Am CArd Number $index"),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50,
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlueAccent[5 * (index % 9)],
                child: Text('List Item $index'),
              );
            }, childCount: 5),
          ),
        ],
      ),
    );
  }
}
