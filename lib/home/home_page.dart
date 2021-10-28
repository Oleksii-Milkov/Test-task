import 'package:flutter/material.dart';
import 'package:test_task/input/input_page.dart';
import 'package:test_task/output/output_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late GoogleMapController mapController;

  final LatLng _position = const LatLng(48.46121102934964, 35.00584614545477);

  final Set<Marker> markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test-task"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('Input'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InputPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Output'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OutputPage(fullName: "Enter your name in input page"),
                  ),
                );
              },
            )
          ],
        ),
      ),
      body: GoogleMap(
        zoomGesturesEnabled: true,
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _position,
          zoom: 11.0,
        ),
        markers: setMarkers(),
      ),
    );
  }

  Set<Marker> setMarkers() {
    setState(() {
      markers.add(const Marker(
        markerId: MarkerId("1"),
        position: LatLng(48.471844704940196, 35.0430174130922),
        infoWindow: InfoWindow(
          title: 'First marker',
          snippet: 'Test google maps marker №1',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));

      markers.add(const Marker(
        markerId: MarkerId("2"),
        position: LatLng(48.43966542315188, 35.05089531726496),
        infoWindow: InfoWindow(
          title: 'Second marker',
          snippet: 'Test google maps marker №2',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
    return markers;
  }
}
