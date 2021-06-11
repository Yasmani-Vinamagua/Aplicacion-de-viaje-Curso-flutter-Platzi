import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_flutter_application_1/Place/ui/screens/search_trips.dart';
import 'package:platzi_flutter_application_1/User/bloc/bloc_user.dart';
import 'package:platzi_flutter_application_1/User/ui/screens/profile_trips.dart';
import 'Place/ui/screens/home_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          activeColor: Colors.indigo,
          backgroundColor: Color(0x33FFFFFF),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return BlocProvider<UserBloc>(
                    bloc: UserBloc(),
                    child: ProfileTrips(),
                  );
                },
              );
              break;
          }
        },
      ),
    );
  }
}
