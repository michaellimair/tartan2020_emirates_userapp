abstract class NavbarState {}

class ShowLounge extends NavbarState {
  final String title = "Lounge";
  final int itemIndex = 0;
}

class ShowFlightInfo extends NavbarState {
  final String title = "FlightInfo";
  final int itemIndex = 1;
}

class ShowFAQ extends NavbarState {
  final String title = "FAQ";
  final int itemIndex = 2;
}

class ShowProfile extends NavbarState {
  final String title = "My Profile";
  final int itemIndex = 3;
}

class ShowSettings extends NavbarState {
  final String title = "Settings";
  final int itemIndex = 4;
}