import 'package:flutter/material.dart';
import 'package:geo_location/services/track.dart';
import 'package:geo_location/views/listpage.dart';

class ViewButton extends StatelessWidget {
  const ViewButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () async {
        final current = await determinePosition();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ListPage(current: current)),
        );
      },
      child: Text("VIEW"),
      color: Colors.grey,
    );
  }
}
