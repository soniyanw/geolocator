import 'package:flutter/material.dart';
import 'package:geo_location/views/widgets/trackbutton.dart';
import 'package:geo_location/views/widgets/updatebutton.dart';
import 'package:geo_location/views/widgets/viewbutton.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GeoLocation"),
      ),
      body: Center(
        child: Column(
          children: [TrackButton(), UpdateButton(), ViewButton()],
        ),
      ),
    );
  }
}
