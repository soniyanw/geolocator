import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geo_location/services/track.dart';
import 'package:geoflutterfire/geoflutterfire.dart';

void updatefirebase() async {
  final geo = Geoflutterfire();
  final _firestore = FirebaseFirestore.instance;
  final a = await determinePosition();
  GeoFirePoint myLocation =
      geo.point(latitude: a.latitude, longitude: a.longitude);
  _firestore.collection('locations').add({
    'name': 'current',
    'geohash': myLocation.data["geohash"],
    'geopoint': myLocation.data['geopoint'],
    'time': Timestamp.now().toDate().toString()
  });
  /*final locations = await FirebaseFirestore.instance.collection('locations').doc();
  Locations newPost = Locations((b) => b
    ..name = "current"
    ..geopoint = GeoPoint(a.latitude, a.longitude)
    ..geohash = myLocation.hash);
  locations.set(newPost.toJson());*/
  print("added");
}
