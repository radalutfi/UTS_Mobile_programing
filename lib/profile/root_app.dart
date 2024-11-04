import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'profile.dart';
import 'location.dart';
import 'notifications.dart';
import 'policy.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        backgroundColor: Color(0xff000000),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
                SizedBox(height: 10),
                Text(
                  "Rada Lutfi Mahcrus",
                  style: TextStyle(
                    color: Color(0xffF2EED7),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "22670010",
                  style: TextStyle(color: Color(0xffF2EED7)),
                )
              ],
            ),
          ),
          const SizedBox(height: 35),
          ...List.generate(
            customListTile.length,
            (index) {
              final tile = customListTile[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Card(
                  elevation: 2,
                  shadowColor: Colors.black12,
                  child: ListTile(
                    leading: Icon(tile.icon, color: tile.color),
                    title: Text(tile.title),
                    trailing: const Icon(Icons.edit),
                    onTap: () {
                      if (tile.title == "Pengaturan Profil") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfilePage(),
                            ));
                      } else if (tile.title == "Lokasi") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LocationPage(),
                            ));
                      } else if (tile.title == "Notifikasi") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotificationsPage(),
                            ));
                      } else if (tile.title == "Kebijakan Privasi") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrivacyPolicyPage(),
                            ));
                      }
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff100F0F),
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings), label: "Setting"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: "Account"),
        ],
      ),
    );
  }
}

class CustomListTile {
  final IconData icon;
  final String title;
  final Color color;
  CustomListTile({
    required this.icon,
    required this.title,
    required this.color,
  });
}

List<CustomListTile> customListTile = [
  CustomListTile(
      icon: Icons.person, title: "Pengaturan Profil", color: Colors.blue),
  CustomListTile(
      icon: Icons.location_on_outlined, title: "Lokasi", color: Colors.green),
  CustomListTile(
      icon: CupertinoIcons.bell, title: "Notifikasi", color: Colors.red),
  CustomListTile(
      icon: CupertinoIcons.lock,
      title: "Kebijakan Privasi",
      color: Colors.orangeAccent),
];
