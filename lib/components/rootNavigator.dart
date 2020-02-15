import 'package:emirates_experience_userapp/blocs/navbarBloc.dart';
import 'package:emirates_experience_userapp/components/drawer/drawer.dart';
import 'package:emirates_experience_userapp/models/agentModel.dart';
import 'package:emirates_experience_userapp/models/navBarState.dart';
import 'package:emirates_experience_userapp/screens/faq/faq.dart';
import 'package:emirates_experience_userapp/screens/flight/flight.dart';
import 'package:emirates_experience_userapp/screens/home/home.dart';
import 'package:emirates_experience_userapp/screens/profile/profile.dart';
import 'package:flutter/cupertino.dart';
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
        if (state is ShowProfile)
          return buildHomepage(3);
        if (state is ShowSettings)
          return buildHomepage(4);
        return buildHomepage(0);
      },
    );
  }

  String getScreenName(int index) {
    switch (index) {
      case 1: return "Flight Information";
      case 2: return "FAQ";
      default: return 'Skywards Experience';
    }
  }

  void navigateToScreen(int index) async {
    if (index == 0) _navbarBloc.add(NavbarItems.Lounge);
    if (index == 1) _navbarBloc.add(NavbarItems.FlightInfo);
    if (index == 2) _navbarBloc.add(NavbarItems.FAQ);
    if (index == 3) _navbarBloc.add(NavbarItems.Profile);
    if (index == 4) _navbarBloc.add(NavbarItems.Settings);
  }

  final List<Widget> _children = <Widget>[
    HomePage(),
    FlightInfoPage(),
    FAQPage(),
    ProfilePage()
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
        onPressed: () {
          if (!AgentModel.available) {
            showDialog(
              context: context,
              child: CupertinoAlertDialog(
                title: new Text("Roving Agent Assigned"),
                content: new Text("An agent will be in touch with you shortly. You can find details about the agent via the Roving Agents menu."),
                actions: <Widget>[
                  CupertinoDialogAction(
                    isDefaultAction: true,
                    child: Text("OK"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              )
            );
            AgentModel.setAgentAvailable(true, agentName: 'Liu Zuo Lin', agentImageAssetURI: 'lib/assets/zl.jpeg');
          } else {
            showDialog(
              context: context,
              child: CupertinoAlertDialog(
                title: new Text("Agents Busy"),
                content: new Text("All our Roving Agents are currently busy. Would you like support via chat?"),
                actions: <Widget>[
                  CupertinoDialogAction(
                    isDefaultAction: true,
                    child: Text("OK"),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.of(context).pushNamed('/Chat');
                    },
                  ),
                  CupertinoDialogAction(
                    isDefaultAction: true,
                    child: Text("Cancel"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              )
            );
          }
        },
        child: Icon(Icons.person)
      ),
    );
  }
}