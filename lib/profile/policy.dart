import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kebijakan Privasi"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              "Kebijakan Privasi",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Terakhir diperbarui: 11/03/2024",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Text(
              "1. Pengumpulan dan Penggunaan Informasi",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Kami mengumpulkan informasi pribadi untuk menyediakan dan meningkatkan layanan kami. "
              "Informasi ini dapat mencakup nama, informasi kontak, dan data relevan lainnya.",
            ),
            SizedBox(height: 20),
            Text(
              "2. Berbagi dan Pengungkapan Data",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Kami tidak membagikan informasi pribadi Anda kepada pihak ketiga kecuali jika diwajibkan oleh hukum "
              "atau untuk melindungi hak dan kepentingan kami.",
            ),
            SizedBox(height: 20),
            Text(
              "3. Keamanan Data",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Kami menerapkan langkah-langkah keamanan yang wajar untuk melindungi informasi pribadi Anda dari akses "
              "atau pengungkapan yang tidak sah.",
            ),
            SizedBox(height: 20),
            Text(
              "4. Cookies dan Pelacakan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Aplikasi kami mungkin menggunakan cookies dan teknologi pelacakan serupa untuk meningkatkan pengalaman Anda "
              "dan menganalisis data penggunaan.",
            ),
            SizedBox(height: 20),
            Text(
              "5. Hak Pengguna",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Pengguna memiliki hak untuk mengakses, memperbarui, atau menghapus informasi pribadi mereka. "
              "Jika Anda ingin menggunakan hak ini, silakan hubungi kami di [Informasi Kontak].",
            ),
            SizedBox(height: 20),
            Text(
              "6. Perubahan Kebijakan Privasi Ini",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Kami berhak untuk memperbarui atau mengubah Kebijakan Privasi kami kapan saja. "
              "Perubahan apa pun akan berlaku segera setelah diposting.",
            ),
            SizedBox(height: 20),
            Text(
              "7. Hubungi Kami",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Jika Anda memiliki pertanyaan atau saran tentang Kebijakan Privasi kami, "
              "jangan ragu untuk menghubungi kami di:\n\n"
              "- Email: radalutfim9@gmail.com.com\n"
              "- Alamat: Mobile Programing",
            ),
          ],
        ),
      ),
    );
  }
}
