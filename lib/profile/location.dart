import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lokasi"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Cari Cabang atau ATM",
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 20),
            Text("Pengaturan Keamanan Lokasi",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            DropdownButtonFormField<String>(
              decoration:
                  InputDecoration(labelText: "Wilayah Aman untuk Transaksi"),
              items: <String>['Purwodadi', 'Semarang', 'Kendal']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Radius Jarak Aman (Km)",
              ),
              keyboardType: TextInputType.number,
            ),
            SwitchListTile(
              title: Text("Aktifkan Notifikasi Transaksi di Luar Wilayah Aman"),
              value: true,
              onChanged: (bool value) {},
            ),
          ],
        ),
      ),
    );
  }
}
