import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget {
  const DraftPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Data contoh untuk mengisi kartu
    final List<Map<String, String>> data = [
      {
        'id': 'P01',
        'nama': 'El Senggol',
        'layanan': 'Potong Rambut',
        'status': 'Menunggu Pembayaran',
      },
      {
        'id': 'P02',
        'nama': 'El Setrum',
        'layanan': 'Cukur Cepat',
        'status': 'Pembayaran Diproses',
      },
      {
        'id': 'P03',
        'nama': 'El Kilat',
        'layanan': 'Layanan Premium',
        'status': 'Selesai',
      },
      {
        'id': 'P04',
        'nama': 'El Kilat',
        'layanan': 'Layanan Premium',
        'status': 'Selesai',
      },
      {
        'id': 'P05',
        'nama': 'El Kilat',
        'layanan': 'Layanan Premium',
        'status': 'Selesai',
      },
      {
        'id': 'P06',
        'nama': 'El Kilat',
        'layanan': 'Layanan Premium',
        'status': 'Selesai',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Draft',
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
              child: SizedBox(
                height: 150,
                child: Card(
                  color: Colors.grey.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['id']!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
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
                        Row(
                          children: [
                            Text(
                              item['status']!,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black45,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Icon(
                              Icons.access_time,
                              size: 16,
                              color: Colors.black45,
                            ),
                          ],
                        ),
                      ],
                    ),
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
