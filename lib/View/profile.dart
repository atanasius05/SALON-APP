import 'package:flutter/material.dart';
import 'package:guidedlayout2_1604/View/login.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfilePage extends StatefulWidget {
  final String profileName;
  final String profilePhone;
  final String profileEmail;
  final String profileUsername;

  const ProfilePage({
    Key? key,
    required this.profileName,
    required this.profilePhone,
    required this.profileEmail,
    required this.profileUsername,
  }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _profileImage;

  Future<void> _openCamera() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _profileImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: _profileImage != null
                      ? FileImage(_profileImage!)
                      : const AssetImage('images/two block.jpg')
                          as ImageProvider, // Profile picture
                ),
                CircleAvatar(
                  radius: 18, // Adjust radius to fit your design
                  backgroundColor: Color(0xFFFFBD13),
                  child: IconButton(
                    icon: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    onPressed: _openCamera,
                    iconSize: 20, // Adjust size if necessary
                    padding: EdgeInsets.all(0), // Center the icon
                    constraints: BoxConstraints(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              widget.profileName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              "Phone: ${widget.profilePhone}",
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 5),
            Text(
              widget.profileEmail,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 5),
            Text(
              "Username: ${widget.profileUsername}",
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 5.0, horizontal: 20.0), // Horizontal margin of 20px
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFFFBD13),
                  borderRadius:
                      BorderRadius.circular(20), // Adjust radius as needed
                ),
                child: ListTile(
                  leading: const Icon(Icons.person, color: Colors.black),
                  title: const Text('About Me',
                      style: TextStyle(color: Colors.black)),
                  trailing:
                      const Icon(Icons.arrow_forward_ios, color: Colors.black),
                  onTap: () {
                    // Navigate to the "About Me" page
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0), // Horizontal margin of 20px
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFFFBD13),
                  borderRadius:
                      BorderRadius.circular(20), // Adjust radius as needed
                ),
                child: ListTile(
                  leading: const Icon(Icons.lock, color: Colors.black),
                  title: const Text('Account Security',
                      style: TextStyle(color: Colors.black)),
                  trailing:
                      const Icon(Icons.arrow_forward_ios, color: Colors.black),
                  onTap: () {
                    // Navigate to the "Account Security" page
                  },
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(5.0), // Padding of 10px
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[
                      300], // Light grey background color with ~20% darkness
                  borderRadius:
                      BorderRadius.circular(0), // Optional: add border radius
                ),
                child: ListTile(
                  leading: const Icon(Icons.info_outline, color: Colors.grey),
                  title: const Text('Version'),
                  trailing:
                      const Text('1.0.0', style: TextStyle(color: Colors.grey)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0), // Padding of 10px
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[
                      300], // Light grey background color with ~20% darkness
                  borderRadius:
                      BorderRadius.circular(0), // Optional: add border radius
                ),
                child: ListTile(
                  leading: const Icon(Icons.logout, color: Colors.red),
                  title: const Text('Sign out',
                      style: TextStyle(color: Colors.red)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginView()),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
