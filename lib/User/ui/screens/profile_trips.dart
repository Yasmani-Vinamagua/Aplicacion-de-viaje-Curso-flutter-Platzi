import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_flutter_application_1/User/bloc/bloc_user.dart';
import 'package:platzi_flutter_application_1/User/model/user.dart';
import 'package:platzi_flutter_application_1/User/ui/screens/profile_header.dart';
import 'package:platzi_flutter_application_1/User/ui/widgets/profile_background.dart';
import 'package:platzi_flutter_application_1/User/ui/widgets/profile_places_list.dart';

class ProfileTrips extends StatelessWidget {
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of<UserBloc>(context);
    // TODO: implement build
    return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            case ConnectionState.none:
              return CircularProgressIndicator();
            case ConnectionState.active:
              return showProfileData(snapshot);
            case ConnectionState.done:
              return showProfileData(snapshot);
            default:
          }
        });
  }

  Widget showProfileData(AsyncSnapshot snapshot) {
    if (snapshot.hasData == null || snapshot.hasError) {
      print("No logueado");
      return Stack(
        children: <Widget>[
          ProfileBackground(),
          ListView(
            children: <Widget>[
              Text("Usuario no Logueado. Haz Login"),
            ],
          )
        ],
      );
    } else {
      print("Logueado");
      var user = User(
        uid: snapshot.data.uid,
        name: snapshot.data.displayName,
        email: snapshot.data.email,
        photoURL: snapshot.data.photoUrl,
      );
      return Stack(
        children: <Widget>[
          ProfileBackground(),
          ListView(
            children: <Widget>[
              ProfileHeader(user), //User datos
              ProfilePlacesList(user), //User uid
            ],
          )
        ],
      );
    }
  }
}
