import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_6/Screens/DetailsScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of cities and categories
  List city = ["Delhi", "Mumbai", "São Paulo", "Manila", "Lagos", "New York"];
  List categories = ["Best Place", "Most Visit", "Favourites", "New", "Offers", "All"];
  List Rate = ["4.9", "4.2", "4.3", "4.5", "5.0", "3.5"];

  // This function will handle the tap on bottom navigation items
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.sort, size: 32, color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.fmd_good_sharp, color: Colors.red),
            SizedBox(width: 8),
            Text(
              "New York, USA",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search, color: Colors.black, size: 28),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              // Horizontal scrolling ListView for cities
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
                          image: AssetImage("images/city${index + 1}.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 20,
                            left: 10,
                            child: Text(
                              city[index],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Icon(
                              CupertinoIcons.bookmark,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              // Horizontal scrolling ListView for categories
              SizedBox(
                height: 50,
                child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 10),
                      child: Container(
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 8,
                              spreadRadius: 0.2,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(categories[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              // Vertical ListView for city images and information
              SizedBox(
                height: 317,
                child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        // Pass the correct image path based on the index or city
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(imagePath: "images/city${index + 1}.jpg", cityName: city[index], cityRate: Rate[index]),
                          ),
                        );
                      },
                      child: Container(
                        child: Column(
                          children: [
                            // Image container
                            Container(
                              height: 160,
                              margin: const EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/city${index + 1}.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            // City name and more options icon
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    city[index],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                    ),
                                  ),
                                  Icon(
                                    Icons.more_vert_outlined,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                            // Rating row
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    Rate[index],
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
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
      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 32,
              color: _selectedIndex == 2 ? Colors.red : Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
      ),
    );
  }
}
