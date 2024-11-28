import 'package:flutter/material.dart';
import 'package:guidedlayout2_1604/View/draft_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Bagian logo tetap di atas
          Image.asset(
            'images/logoAtmaSalon.jpg', // Path ke logo
            width: 500, // Ubah ukuran sesuai kebutuhan
            height: 90,
          ),
          const SizedBox(height: 5),
          // Konten yang bisa discroll
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Card(
                      elevation: 8, // Menambahkan elevasi untuk bayangan
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.yellow.shade700,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 6),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Halo, Selamat Datang 👋',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    const Text(
                                      'El Senggol Bin Otot',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 24,
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.yellow.shade700,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Combined Card for Draft and Maps
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 110.0),
                    child: Card(
                      color: Colors.yellow.shade700,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildCardButton(
                            context,
                            Icons.inbox_outlined,
                            'Draft',
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DraftPage(),
                                ),
                              );
                            },
                            Colors.white,
                          ),
                          const VerticalDivider(thickness: 1, width: 1),
                          _buildCardButton(
                            context,
                            Icons.pin_drop_outlined,
                            'Maps',
                            () {
                              // Tambahkan navigasi untuk halaman Maps jika diperlukan
                            },
                            Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Hair Style Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: const Text(
                      'HAIR STYLE',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(),
                  _buildHairStyleCard(
                    'Buzz Cut', 
                    'Buzz cut adalah potongan rambut sangat pendek dan merata. Gaya ini praktis, mudah dirawat, dan memberikan tampilan bersih serta rapi.',
                    'images/buzz cut.jpg',
                  ),
                  _buildHairStyleCard(
                    'French Crop',
                    'French crop adalah potongan rambut pendek dengan bagian samping dan belakang dicukur rapi.',
                    'images/french crop.jpg',
                  ),
                  _buildHairStyleCard(
                    'Long Flow',
                    'Long flow adalah gaya rambut dengan panjang sedang hingga panjang.',
                    'images/long flow.jpg',
                  ),
                  _buildHairStyleCard(
                    'Two Block',
                    'Two block adalah potongan rambut dengan sisi dan belakang dipangkas pendek, sedangkan bagian atas dibiarkan lebih panjang.',
                    'images/two block.jpg',
                  ),
                  _buildHairStyleCard(
                    'Mullet',
                    'Mullet adalah potongan rambut dengan panjang yang berbeda, di mana bagian depan dan samping pendek, sementara bagian belakang panjang.',
                    'images/mullet.jpg',
                  ),
                  _buildHairStyleCard(
                    'Low Taper Fade',
                    'Low taper fade adalah gaya potongan rambut di mana rambut dipotong lebih pendek di bagian bawah dekat telinga dan leher, dengan transisi halus ke rambut yang lebih panjang di bagian atas.',
                    'images/low tapper fade.jpg',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardButton(BuildContext context, IconData icon, String label,
      VoidCallback onPressed, Color iconColor) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30, color: iconColor),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHairStyleCard(String title, String description, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.circular(0.0),
                  ),
                  child: Image.asset(
                    imagePath,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 120,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade700,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(15.0),
                        bottomRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Text(
                      description,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
