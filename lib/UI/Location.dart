// ignore: file_names
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  Set<Marker> marker = {};

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      marker.add(Marker(
          markerId: MarkerId("value1"),
          position: const LatLng(34.036944, 71.619410)));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.61,
                width: size.width,
                child: GoogleMap(
                  mapType: MapType.hybrid,
                  onMapCreated: onMapCreated,
                  markers: marker,
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(34.036944, 71.619410),
                    zoom: 50,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.5452316,
                child: Container(
                    height: size.height * 0.46344898,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(size.width * 0.06366183),
                            topRight: Radius.circular(size.width * 0.06366183)),
                        color: Colors.white),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: size.height * 0.0286541),
                          Center(
                              child: Image.asset("assets/icons/Indicator.png")),
                          SizedBox(
                            height: size.height * 0.01920369,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.07130125),
                            child: Text("Your location",
                                style: TextStyle(
                                  fontSize: size.width * 0.05602241,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          SizedBox(
                            height: size.height * 0.01920369,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.07130125),
                            child: Text(
                                "Enter your address to have suggestions near you",
                                style: TextStyle(
                                  fontSize: size.width * 0.03565062389,
                                  color: const Color(0xff8f92a1),
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          SizedBox(height: size.height * 0.0448086),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.07130125),
                            child: Text("ADDRESS",
                                style: TextStyle(
                                  fontSize: size.width * 0.03055767762,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          SizedBox(
                            height: size.height * 0.02560492,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.07130125),
                            child: Container(
                              height: size.height * 0.0614518,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    suffixIcon: Image.asset(
                                        "assets/icons/LocationIcon.png")),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02560492,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.07130125),
                            child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: size.height * 0.07425426,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff79d0f1),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Next",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
