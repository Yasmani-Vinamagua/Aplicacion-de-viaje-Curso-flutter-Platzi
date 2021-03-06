import 'package:flutter/material.dart';
import 'package:platzi_flutter_application_1/User/bloc/bloc_user.dart';
import 'package:platzi_flutter_application_1/User/ui/screens/sign_in_screen.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          title: 'Flutter Demo',
          home: SignInScreen(),
        ),
        bloc: UserBloc());
  }
}
