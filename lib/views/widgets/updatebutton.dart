import 'package:flutter/material.dart';
import 'package:geo_location/services/update_database.dart';

class UpdateButton extends StatelessWidget {
  const UpdateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () async {
        updatefirebase();
      },
      child: Text("UPDATE"),
      color: Colors.grey,
    );
  }
}
