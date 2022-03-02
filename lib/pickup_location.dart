// ignore_for_file: prefer_final_fields, unnecessary_const, prefer_const_constructors, unnecessary_new

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:worldcitizen/pickup_details.dart';
import 'NormalButton.dart';
import 'donation_channel.dart';
import 'package:address_search_field/address_search_field.dart';

class PickupLocation extends StatefulWidget {
  static const String id = 'pickup_location';
  const PickupLocation({Key? key}) : super(key: key);

  @override
  _PickupLocationState createState() => _PickupLocationState();
}

class _PickupLocationState extends State<PickupLocation> {
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(6.57111, 3.37167);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.normal,
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 15.0,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 70),
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios_new),
                  color: Color(0xFF2B468B),
                  onPressed: () {
                    Navigator.pushNamed(context, DonationChannel.id);
                  },
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 30),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 70),
                  child: IconButton(
                    icon: Icon(Icons.location_on),
                    color: Color(0xFF2B468B),
                    iconSize: 40,
                    onPressed: () {
                      Navigator.pushNamed(context, DonationChannel.id);
                    },
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 220,
                        height: 40,
                        child: Material(
                          elevation: 5.0,
                          shadowColor: Color(0xFF3E3A3A),
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              labelText: 'Address',
                              labelStyle: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      SizedBox(
                        width: 220,
                        height: 40,
                        child: Material(
                          elevation: 5.0,
                          shadowColor: Color(0xFF3E3A3A),
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 1.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              labelText: 'No',
                              labelStyle: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 220,
                        height: 70,
                        child: NormalButton(
                            title: 'NEXT',
                            colour: Color(0xFF2B468B),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 675),
            child: Material(
              elevation: 5.0,
              color: Color(0xFF2B468B),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, PickUpDetails.id);
                },
                minWidth: 400.0,
                height: 60.0,
                child: Text(
                  'Pick-up Location',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w900,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
