import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: SliverToBoxAdapter(
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Order #122',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                      ),
                    ),
                    SizedBox(height: 120),
                    Text('Served in 30 mins')
                  ],
                ),
              )
            )
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: SliverGrid.count(
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            crossAxisCount: 3,
            children: <Widget>[
              ItemCategory(category: 'Food',),
              ItemCategory(category: 'Refreshing Beverages',),
              ItemCategory(category: 'Alcohol',),
              ItemCategory(category: 'Services',),
            ],
          ),
        )
      ],
    );
  }
}

class ItemCategory extends StatelessWidget {
  const ItemCategory({
    Key key,
    @required this.category
  }) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.all(16),
      alignment: Alignment.bottomLeft,
      child: Text(category, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,)),
    );
  }
}