import 'package:flutter/material.dart';
import 'package:geo_location/services/track.dart';
import 'package:geolocator_platform_interface/src/models/position.dart';

class TrackButton extends StatelessWidget {
  const TrackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () async {
        Position a = await determinePosition();
        print(a);
      },
      child: Text("TRACK"),
      color: Colors.grey,
    );
  }
}
