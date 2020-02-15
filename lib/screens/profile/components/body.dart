import 'package:emirates_experience_userapp/screens/profile/components/about.dart';
import 'package:emirates_experience_userapp/screens/profile/components/nameCard.dart';
import './userHistory.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 2,
        child: CustomScrollView(
          physics: NeverScrollableScrollPhysics(),
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: NameCard()
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                height: 400,
                child: TabBarView(
                  children: <Widget>[
                    UserHistory(),
                    AboutUser()
                  ],
                ),
              )
            )
          ],
        )
      )
    );
  }
}