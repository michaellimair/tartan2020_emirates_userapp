import 'package:emirates_experience_userapp/theme/theme.dart';
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
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/assets/dubai-international.png"),
                    colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.7), BlendMode.dstATop),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Welcome to Dubai International Airport!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Next Flight: DXB',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.flight_takeoff,
                            color: EMIRATES_RED,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'JFK',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 90),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          // width: 80,
                          child: Text('Michael Lim', style: TextStyle()),
                        ),
                        Container(
                          // width: 120.0,
                          padding: EdgeInsets.all(8),
                          // height: 25.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(width: 1.0, color: Colors.black),
                          ),
                          child: Center(
                            child: Text(
                              'Platinum',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
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
              ItemCategory(
                category: 'Navigation',
                onTap: () {
                  Navigator.of(context).pushNamed('/Map');
                }
              ),
              ItemCategory(category: 'What to Do',),
              ItemCategory(category: 'Services',),
              ItemCategory(category: 'Member Benefits',),
              ItemCategory(
                category: 'Roving Agents',
                onTap: () {
                  Navigator.of(context).pushNamed('/Agents');
                }
              ),
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
    @required this.category,
    this.onTap
  }) : super(key: key);

  final String category;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.all(16),
        alignment: Alignment.bottomLeft,
        child: Text(category, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,)),
      ),
    );
  }
}