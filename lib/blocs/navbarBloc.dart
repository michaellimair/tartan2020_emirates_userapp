import 'package:bloc/bloc.dart';
import '../models/navBarState.dart';

enum NavbarItems { Lounge, FlightInfo, FAQ, Profile, Settings }

class NavbarBloc extends Bloc<NavbarItems, NavbarState> {
  @override
  NavbarState get initialState => ShowLounge();

  @override
  Stream<NavbarState> mapEventToState(NavbarItems event) async* {
    switch (event) {
      case NavbarItems.FlightInfo:
        yield ShowFlightInfo();
        break;
      case NavbarItems.FAQ:
        yield ShowFAQ();
        break;
      case NavbarItems.Profile:
        yield ShowProfile();
        break;
      case NavbarItems.Settings:
        yield ShowSettings();
        break;
      default:
        yield ShowLounge();
        break;
    }
  }
}
