import 'package:flutter/material.dart';
import 'package:guidedlayout2_1604/View/history.dart';
import 'package:guidedlayout2_1604/View/listReview.dart';
import 'home.dart';
import 'list_barber.dart';
import 'profile.dart';

class Showprofile extends StatefulWidget {
  const Showprofile({super.key});

  @override
  _ShowprofileState createState() => _ShowprofileState();
}

class _ShowprofileState extends State<Showprofile> {
  int _selectedIndex = 0;

  final List<String> barbers = [
    "John Doe",
    "Jane Smith",
    "Bob Johnson",
    "Emily Davis",
    "Michael Brown",
    "Sara Wilson",
  ];
  final List<String> phoneNumbers = [
    "+123 456 789",
    "+987 654 321",
    "+456 789 123",
    "+321 654 987",
    "+789 123 456",
    "+654 987 321",
  ];

  final String profileName = "John Doe";
  final String profilePhone = "+123 456 789";
  final String profileEmail = "johndoe@email.com";
  final String profileUsername = "johndoe123";

  late List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = [
      const HomePage(),
      ListBarberPage(barbers: barbers, phoneNumbers: phoneNumbers),
      ListReviewsPage(),
      const HistoryPage(),
      ProfilePage(
        profileName: profileName,
        profilePhone: profilePhone,
        profileEmail: profileEmail,
        profileUsername: profileUsername,
      ),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: _widgetOptions[_selectedIndex],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors
                .yellow.shade700, // Warna background navbar diubah ke kuning
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.map),
                label: 'Booking',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.thumb_up),
                label: 'Review',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white30,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}
