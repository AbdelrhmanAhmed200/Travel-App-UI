import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String imagePath;
  final String cityName;
  final String cityRate;

  DetailsScreen({required this.imagePath, required this.cityName, required this.cityRate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Stack to layer the back icon on top of the image
          Stack(
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 460, // Adjust image height as needed
                color: Colors.black.withOpacity(0.3), // Apply 30% opacity
                colorBlendMode: BlendMode.darken, // Darken the image for better contrast
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Back button
                    InkWell(
                      onTap: () {
                        Navigator.pop(context); // Close the current screen
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    // Favorite button
                    InkWell(
                      onTap: () {
                        // Handle favorite action here
                      },
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Container for city details section
          Container(
            height: 344,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  // City name and rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cityName,
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber),
                          SizedBox(width: 5),
                          Text(
                            cityRate,
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  // Description text
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),

                  // Image gallery
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Image 1
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10), // Rounded corners for the image
                        child: Image.asset(
                          "images/city4.jpg",
                          height: 100,
                          width: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 5),

                      // Image 2
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10), // Rounded corners for the image
                        child: Image.asset(
                          "images/city2.jpg",
                          height: 100,
                          width: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 5),

                      // Image 3 with "10+" overlay
                      Stack(
                        children: [
                          // Image with rounded corners
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "images/city3.jpg",
                              height: 100,
                              width: 110,
                              fit: BoxFit.cover,
                              color: Colors.black.withOpacity(0.6), // Apply 60% opacity
                              colorBlendMode: BlendMode.darken,    // Darken the image for contrast
                            ),
                          ),
                          // Positioned "10+" text
                          Positioned(
                            right:30,
                            top: 30,
                            child: Center(
                              child: Text(
                                "10+",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white, // Visible on dark background
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  // Buttons for bookmark and book now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3), // Semi-transparent shadow
                              blurRadius: 8, // How blurred the shadow is
                              offset: Offset(2, 2), // Shadow position (x, y)
                            ),
                          ],
                        ),
                        child: Icon(
                          CupertinoIcons.bookmark,
                          size: 30,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3), // Semi-transparent shadow
                              blurRadius: 8, // How blurred the shadow is
                              offset: Offset(2, 2), // Shadow position (x, y)
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Book Now",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
