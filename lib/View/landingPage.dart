import 'package:flutter/material.dart';
import 'package:guidedlayout2_1604/utilities/constant.dart';
import 'login.dart';
import 'register.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Bagian atas dengan background hitam melengkung
            Container(
              height:
                  MediaQuery.of(context).size.height * 0.45, // 50% tinggi layar
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(300),
                  bottomRight: Radius.circular(300),
                ),
              ),
              child: Center(
                child: CircleAvatar(
                  radius: 120, // Ukuran gambar logo
                  backgroundImage: AssetImage('images/Logo.jpg'),
                  backgroundColor: Colors.transparent, // Hapus latar belakang
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Text Welcome
            const Text(
              'Welcome',
              style: kTextStyle1,
              textAlign: TextAlign.center,
            ),
            
            const Text(
              'Your Look, Our Passion',
              style: kTextStyle8,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 100),
            // Tombol Log In
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFBD13), // Warna kuning
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 160),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const LoginView(),
                  ),
                );
              },
              child: const Text(
                'LOG IN',
                style: kTextStyle3,
              ),
            ),
            const SizedBox(height: 20),
// Tombol Sign Up
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Color(0xFFFFBD13), // Warna border kuning
                  width: 2,
                ),
                foregroundColor: const Color(0xFFFFBD13), // Warna teks kuning
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 150),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const RegisterView(),
                  ),
                );
              },
              child: const Text(
                'SIGN UP',
                style: kTextStyle2,
              ),
            ),
            const Spacer(),
            // Informasi Terms of Service dan Privacy Policy
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0),
              child: Text(
                'By logging in or registering, you agree to our Terms of Service and Privacy Policy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
