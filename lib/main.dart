import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latlng;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FlutterMap(
      options: MapOptions(
        center: latlng.LatLng(51.5, -0.09),
        zoom: 13.0,
      ),
      layers: [
        TileLayerOptions(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/yugga/cl13vxlx4001814o12anedgce/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoieXVnZ2EiLCJhIjoiY2wxM3ZvbTc5MGlyczNpczY3ejNxZ2puNiJ9.GAc7gJ1yQVSeZVzySy6KsA",
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1IjoieXVnZ2EiLCJhIjoiY2wxM3ZvbTc5MGlyczNpczY3ejNxZ2puNiJ9.GAc7gJ1yQVSeZVzySy6KsA',
              'id': 'mapbox.mapbox-streets-v8'
            }),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: latlng.LatLng(51.5, -0.09),
              builder: (ctx) => Container(
                child: FlutterLogo(),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
