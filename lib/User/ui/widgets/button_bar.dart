import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:platzi_flutter_application_1/Place/ui/screens/add_place_screen.dart';
import 'package:platzi_flutter_application_1/User/bloc/bloc_user.dart';
import 'circle_button.dart';
import 'dart:io';

class ButtonsBar extends StatelessWidget {
  UserBloc userBloc;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 0.0,
        vertical: 10.0,
      ),
      child: Row(
        children: <Widget>[
          //Cambiar la contraseña
          CircleButton(true, Icons.vpn_key, 20.0,
              Color.fromRGBO(255, 255, 255, 0.6), () => {}),
          //Añadiremos un nuevo lugar
          CircleButton(false, Icons.add, 40.0, Color.fromRGBO(255, 255, 255, 1),
              () {
            //tomar foto con celular
            picker
                .getImage(source: ImageSource.camera)
                .then((PickedFile image) {
              //if (image != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        AddPlaceScreen(image: File(image.path))),
              ).catchError((onError) => print(onError));
              // }
            });
          }),

          //Cerrar Sesión
          CircleButton(true, Icons.exit_to_app, 20.0,
              Color.fromRGBO(255, 255, 255, 0.6), () => {userBloc.signOut()}),
        ],
      ),
    );
  }
}
