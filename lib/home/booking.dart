import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class hotel {
  final String image;
  final double rating;
  final double miles;
  final String name;
  final double price;

  hotel({
    required this.image,
    required this.rating,
    required this.miles,
    required this.name,
    required this.price,
  });
}

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  final Completer<GoogleMapController> _controller = Completer();

  final List<hotel> hotels = [
    hotel(
      image: "assets/images/room1.jpg",
      rating: 4.8,
      name: 'SSS Hotel',
      price: 120,
      miles: 1.5,
    ),
    hotel(
      image: "assets/images/room2.jpg",
      rating: 4.8,
      name: 'RK Hotel',
      price: 120,
      miles: 1.5,
    ),
    hotel(
      image: "assets/images/room3.jpg",
      rating: 4.8,
      name: 'SVG Hotel',
      price: 120,
      miles: 1.5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchBar(
                  focusNode: FocusNode(),
                  backgroundColor: WidgetStateProperty.all(
                    Colors.grey.shade200,
                  ),
                  leading: const Icon(Icons.search, color: Colors.grey),
                  hintText: "Search",
                  elevation: WidgetStateProperty.all(0),
                  shape: WidgetStateProperty.all(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),

                // Filters
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          _buildDropdown(['Filter', 'Two', 'Three'], 'Filter'),
                          const SizedBox(width: 10),
                          _buildDropdown([
                            'Sort',
                            'One',
                            'Two',
                            'Three',
                          ], 'Sort'),
                        ],
                      ),
                      const Text(
                        "99 results",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GoogleMap(
                    initialCameraPosition: const CameraPosition(
                      target: LatLng(12.921940578707812, 79.56860544314448),
                      zoom: 15,
                    ),
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                ),

                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 5,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                    itemCount: hotels.length,
                    itemBuilder: (context, index) {
                      final hotel = hotels[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                        child: SizedBox(
                          width: 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image(
                                  image: AssetImage(hotel.image),
                                  height: 140,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                hotel.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_border,
                                    size: 14,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    '${hotel.rating}(500 reviews)',
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 14,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    '${hotel.miles}(miles)',
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$${hotel.price.toStringAsFixed(2)} / night',
                                  ),
                                  SizedBox(
                                    width: 80,
                                    height: 35,
                                    child: TextButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                              Colors.black,
                                            ),
                                        shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Select",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDropdown(List<String> items, String value) {
    return SizedBox(
      width: 100,
      height: 40,
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 12,
          ),
          border: const OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
          ),
        ),
        value: value,
        items:
            items.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item, style: const TextStyle(fontSize: 14)),
              );
            }).toList(),
        onChanged: (String? newValue) {},
      ),
    );
  }
}
