import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_flutter_application_1/Place/model/place.dart';
import 'package:platzi_flutter_application_1/Place/model/repository/firebase_storage_repository.dart';
import 'package:platzi_flutter_application_1/User/model/user.dart';
import 'package:platzi_flutter_application_1/User/repository/auth_repository.dart';
import 'package:platzi_flutter_application_1/User/repository/cloud_firestore_repository.dart';

class UserBloc implements Bloc {
  final _auth_repository = AuthRepository();
  //flujo de datos - Streams
  //Stream - Firebase
  //StreamController
  Stream<FirebaseUser> streamFirebase =
      FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;
  Future<FirebaseUser> get currentUser => FirebaseAuth.instance.currentUser();
  //Casos uso
  //1. SignIn a la aplicación Google
  Future<FirebaseUser> signIn() => _auth_repository.signInFirebase();

  //2. Registrar usuario en base de datos
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(User user) =>
      _cloudFirestoreRepository.updateUserDataFirestore(user);

  Future<void> updatePlaceDate(Place place) =>
      _cloudFirestoreRepository.updatePlaceDate(place);

  final _firebaseStorageRepository = FirebaseStorageRepository();
  Future<StorageUploadTask> uploadFile(String path, File image) =>
      _firebaseStorageRepository.uploadFile(path, image);

  signOut() {
    _auth_repository.signOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
