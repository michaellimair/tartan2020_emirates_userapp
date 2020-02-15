import 'dart:ui';

import 'package:easy_localization/easy_localization_delegate.dart';
import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.grey[800],
      child: InkWell(
        onTap: () {
        },
        child: _CardContainer(),
      ),
    );
  }
}


class _CardContainer extends StatelessWidget {
  const _CardContainer({
    Key key,
  }) : super(key: key);

  // We use context from build method here because the context from the FutureBuilder
  //will be discarded, causing errors when navigating to a new page
  Widget _buildUserDetails(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
              ),
              child: Image.asset(
                'lib/assets/lim.jpeg'
              ),
            ),
          )
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          SizedBox(height: 16,),
          _buildUserDetails(context),
          SizedBox(height: 16,),
          Text(
            'Michael Lim',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          TabBar(
            tabs: [
              Tab(text: 'Points', icon: Text('32768', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold))),
              Tab(text: 'Tier', icon: Text('Premium', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),)
            ]
          ),
        ]
      ),
    );
  }
}