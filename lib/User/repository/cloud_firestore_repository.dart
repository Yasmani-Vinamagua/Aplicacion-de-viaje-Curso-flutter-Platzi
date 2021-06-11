import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:platzi_flutter_application_1/Place/model/place.dart';
import 'package:platzi_flutter_application_1/User/model/user.dart';
import 'package:platzi_flutter_application_1/User/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreAPI();
  void updateUserDataFirestore(User user) =>
      _cloudFirestoreAPI.updateUserDate(user);
  Future<void> updatePlaceDate(Place place) =>
      _cloudFirestoreAPI.updatePlaceDate(place);
}
