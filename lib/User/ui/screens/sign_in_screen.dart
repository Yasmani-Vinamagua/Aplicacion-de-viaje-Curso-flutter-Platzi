import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_flutter_application_1/User/bloc/bloc_user.dart';
import 'package:platzi_flutter_application_1/User/model/user.dart';
import 'package:platzi_flutter_application_1/platzi_trips_cupertino.dart';
import 'package:platzi_flutter_application_1/widgets/button_green.dart';
import 'package:platzi_flutter_application_1/widgets/gradient_back.dart';

class SignInScreen extends StatefulWidget {
  @override
  State createState() {
    // TODO: implement createState
    return _SignInScreen();
  }
}

class _SignInScreen extends State<SignInScreen> {
  UserBloc userBloc;
  double screenWidth;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    userBloc = BlocProvider.of(context);
    double screenWidth = MediaQuery.of(context).size.width;
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
      stream: userBloc.authStatus,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        //snapshot - data - Objet user
        if (!snapshot.hasData || snapshot.hasError) {
          return signInGooglrUI();
        } else {
          return PlatziTripsCupertino();
        }
      },
    );
  }

  Widget signInGooglrUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack(
            height: null,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Container(
                  width: screenWidth,
                  child: Text(
                    "Welcome \n This is your Travel App",
                    style: TextStyle(
                        fontSize: 37.0,
                        fontFamily: "Lato",
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ButtonGreen(
                text: "Login with Gmail",
                onPressed: () {
                  userBloc.signOut();
                  userBloc.signIn().then((FirebaseUser user) {
                    userBloc.updateUserData(
                      User(
                          uid: user.uid,
                          name: user.displayName,
                          email: user.email,
                          photoURL: user.photoUrl),
                    );
                  });
                },
                width: 300.0,
                height: 50.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}
