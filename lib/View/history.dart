import 'package:flutter/material.dart';
import 'package:guidedlayout2_1604/View/ReviewPage.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Data contoh untuk mengisi kartu
    final List<Map<String, String>> data = [
      {
        'id': 'P01',
        'nama': 'El Senggol',
        'layanan': 'Potong Rambut',
        'harga': '50000',
        'tanggal': '07 Jan 2023',
        'status': 'Lunas',
      },
      {
        'id': 'P02',
        'nama': 'El Setrum',
        'layanan': 'Cukur Cepat',
        'harga': '50000',
        'tanggal': '07 Jan 2023',
        'status': 'Gagal',
      },
      {
        'id': 'P03',
        'nama': 'El Kilat',
        'layanan': 'Layanan Premium',
        'harga': '50000',
        'tanggal': '07 Jan 2023',
        'status': 'Lunas',
      },
      {
        'id': 'P04',
        'nama': 'El Kilat',
        'layanan': 'Layanan Premium',
        'harga': '50000',
        'tanggal': '07 Jan 2023',
        'status': 'Lunas',
      },
      {
        'id': 'P05',
        'nama': 'El Kilat',
        'layanan': 'Layanan Premium',
        'harga': '50000',
        'tanggal': '07 Jan 2023',
        'status': 'Gagal',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //hilangin panah back
        title: const Text(
          'History',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: data.length, // Jumlah item berdasarkan data
          itemBuilder: (context, index) {
            final item = data[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Card(
                color: Colors.yellow.shade700,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Baris untuk ID dan tanggal
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item['id']!,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            item['tanggal']!,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Nama : ${item['nama']}',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        'Jenis Layanan : ${item['layanan']}',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Total Harga : ${item['harga']}',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Text(
                            'Status Pembayaran: ',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: item['status'] == 'Lunas'
                                  ? Colors.green
                                  : Colors.red,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              item['status']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      if (item['status'] == 'Lunas')
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ReviewPage(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              'Review',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
