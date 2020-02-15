import 'package:bloc/bloc.dart';
import '../models/navBarState.dart';

enum NavbarItems { Lounge, FlightInfo, FAQ }

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
      default:
        yield ShowLounge();
        break;
    }
  }
}
