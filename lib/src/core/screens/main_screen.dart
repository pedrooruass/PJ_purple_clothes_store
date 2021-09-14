import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lamp_bottom_navigation/lamp_bottom_navigation.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController;
  int _page = 0;

  void _navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  final List<Widget> items = [
    AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade600,
              Colors.purple.shade500,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: Icon(FontAwesomeIcons.tshirt, size: 40,),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Clothing",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                "Tank, Top, Shirts, Blouse, Skirt",
                style: TextStyle(color: Colors.white70),
              )
            ],
          ),
        ),
      ),
    ),
    AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade600,
              Colors.purple.shade500,
            ],
          ),
        ),
      ),
    ),
    AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade600,
              Colors.purple.shade500,
            ],
          ),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Clothes You Like!",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: false,
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: <Widget>[
          Stack(
            children: [
              ListView(
                padding: EdgeInsets.symmetric(horizontal: 15),
                children: [
                  SizedBox(height: 20),
                  SafeArea(
                    bottom: false,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none),
                        labelText: "Lets Buy Clothes!!",
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                    child: Text(
                      "Search By categories",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 200,
                      child: CarouselSlider(
                          items: items,
                          options: CarouselOptions(
                            // height: 200,
                            aspectRatio: 9 / 16,
                            viewportFraction: 0.4,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Friends Favorites",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 11),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(11),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            blurRadius: 50,
                            spreadRadius: 10,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            FontAwesomeIcons.home,
                            color: Colors.purple,
                          ),
                          Icon(
                            FontAwesomeIcons.search,
                          ),
                          Icon(
                            FontAwesomeIcons.heart,
                          ),
                          Icon(
                            FontAwesomeIcons.shoppingBag,
                          ),
                          Icon(
                            FontAwesomeIcons.apple,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Text(
              "EU",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "TE",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "AMOOOOOO S2",
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: LampBottomNavigationBar(
      //   currentIndex: _page,
      //   width: double.infinity,
      //   items: [
      //     FontAwesomeIcons.home,
      //     FontAwesomeIcons.search,
      //     FontAwesomeIcons.heart,
      //     FontAwesomeIcons.shoppingBag,
      //     FontAwesomeIcons.apple,
      //   ],
      //   onTap: _navigationTapped,
      // ),
    );
  }
}
