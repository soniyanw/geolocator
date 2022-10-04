import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Future<dynamic> getlocations() async {
  CollectionReference streams =
      FirebaseFirestore.instance.collection('locations');

  return StreamBuilder<QuerySnapshot>(
      stream: streams.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }
        return ListView.builder(
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(snapshot.data!.docs[index]['title']),
              subtitle: Text(snapshot.data!.docs[index]['desc']),
            );
          },
        );
      });
}
