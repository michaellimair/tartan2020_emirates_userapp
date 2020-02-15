import 'package:emirates_experience_userapp/blocs/navbarBloc.dart';
import 'package:emirates_experience_userapp/components/drawer/drawer.dart';
import 'package:emirates_experience_userapp/models/navBarState.dart';
import 'package:emirates_experience_userapp/screens/faq/faq.dart';
import 'package:emirates_experience_userapp/screens/flight/flight.dart';
import 'package:emirates_experience_userapp/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootNavigator extends StatefulWidget {
  @override
  _RootNavigatorState createState() => _RootNavigatorState();
}

class _RootNavigatorState extends State<RootNavigator> {
  NavbarBloc _navbarBloc;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _navbarBloc = NavbarBloc();
  }

  @override
  void dispose() {
    _navbarBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Reinitialize contexts to handle login
    return BlocBuilder(
      bloc: _navbarBloc,
      builder: (BuildContext context, NavbarState state) {
        if (state is ShowFlightInfo)
          return buildHomepage(1);
        if (state is ShowFAQ)
          return buildHomepage(2);
        return buildHomepage(0);
      },
    );
  }

  String getScreenName(int index) {
    switch (index) {
      case 1: return "Flight Information";
      case 2: return "FAQ";
      default: return 'Lounge';
    }
  }

  void navigateToScreen(int index) async {
    if (index == 0) _navbarBloc.add(NavbarItems.Lounge);
    if (index == 1) _navbarBloc.add(NavbarItems.FlightInfo);
    if (index == 2) _navbarBloc.add(NavbarItems.FAQ);
  }

  final List<Widget> _children = <Widget>[
    HomePage(),
    FlightInfoPage(),
    FAQPage(),
  ];

  final List<Map<String, dynamic>> navbarItemsMetadata = [
    {
      "icon": Icons.home,
      "titleKey": "lounge"
    },
    {
      "icon": Icons.credit_card,
      "titleKey": "flightInfo"
    },
    {
      "icon": Icons.location_on,
      "titleKey": "faq"
    },
  ];

  Scaffold buildHomepage(int currentIndex) {
    return Scaffold(
      body: _children[currentIndex],
      drawer: EmiratesDrawer(
        onTap: (index) {
          navigateToScreen(index);
        },
      ),
      appBar: AppBar(title: Text(getScreenName(currentIndex))),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.person)
      ),
    );
  }
}