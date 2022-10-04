import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:geolocator/geolocator.dart';

class ListPage extends StatefulWidget {
  final Position current;
  const ListPage({Key? key, required this.current}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GeoLocation"),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream:
              FirebaseFirestore.instance.collection('locations').snapshots(),
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
                if (Geoflutterfire()
                        .point(
                            latitude: widget.current.latitude,
                            longitude: widget.current.longitude)
                        .data['geohash'] ==
                    snapshot.data!.docs[index]['geohash']) {
                  return ListTile(
                    title: Text(snapshot.data!.docs[index]['name']),
                    subtitle: Column(
                      children: [
                        Text(snapshot.data!.docs[index]['geohash']),
                        Text("latitude= " +
                            snapshot.data!.docs[index]['geopoint'].latitude
                                .toString()),
                        Text("longitude= " +
                            snapshot.data!.docs[index]['geopoint'].longitude
                                .toString()),
                        Text(snapshot.data!.docs[index]['time']),
                      ],
                    ),
                  );
                } else {
                  return Container();
                }
              },
            );
          }),
    );
  }
}
