import 'package:flutter/material.dart';
import 'package:sample_app/components/landing_page/buttons_grp.dart';
import 'package:sample_app/components/landing_page/landingpage_banner.dart';
import 'package:sample_app/components/landing_page/story_landingpage.dart';
import 'package:sample_app/home/Contact_page.dart';

class product {
  final String? image;
  final String? brand;
  final String? name;
  final double? price;

  product({this.brand, this.image, this.name, this.price});
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<product> products = [
    product(
      brand: "KSM",
      image: "assets/images/title1.jpg",
      name: "corn",
      price: 8.90,
    ),
    product(
      brand: "KSM",
      image: "assets/images/title2.jpg",
      name: "cabbage",
      price: 10.99,
    ),
    product(
      brand: "KSM",
      image: "assets/images/title3.jpg",
      name: "tomato",
      price: 6.99,
    ),
    product(
      brand: "KSM",
      image: "assets/images/title4.jpg",
      name: "carrot",
      price: 18.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          // width: 326,
                          child: SearchBar(
                            focusNode: FocusNode(),
                            backgroundColor: WidgetStateProperty.all(
                              Colors.grey.shade200,
                            ),
                            leading: Icon(Icons.search, color: Colors.grey),
                            hintText: "Search",

                            elevation: WidgetStateProperty.all(0),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ContactPage(),
                            ),
                          );
                        },
                        child: Icon(Icons.message_outlined),
                      ),
                    ],
                  ),
                ),
                ButtonsGrp(),
                LandingpageBanner(),

                Row(
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      constraints: BoxConstraints(maxHeight: 18),
                      iconSize: 18,
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                Story(),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Title',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            constraints: BoxConstraints(maxHeight: 18),
                            iconSize: 18,
                            padding: EdgeInsets.zero,
                            icon: Icon(Icons.keyboard_arrow_right_outlined),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: SizedBox(
                          width: 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image(
                                  image: AssetImage(product.image!),
                                  height: 140,
                                  width: 160,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                product.brand!,
                                style: const TextStyle(color: Colors.grey),
                              ),
                              Text(
                                product.name!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('\$${product.price!.toStringAsFixed(2)}'),
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
}
