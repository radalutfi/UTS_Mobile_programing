import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile/root_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: Column(
        children: <Widget>[
          SizedBox(height: 110),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Rada Lutfi Mahcrus",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Home",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 40),
          Expanded(child: GridWidget())
        ],
      ),
    );
  }
}

class GridWidget extends StatelessWidget {
  final List<Item> items = [
    Item(
      title: 'Profil',
      img: "assets/images/user.png",
      color: Color(0xff179BAE),
      destination: RootApp(),
    ),
    Item(
      title: 'Mutasi',
      img: "assets/images/history.png",
      color: Color(0xff387F39),
      destination: RootApp(),
    ),
    Item(
      title: 'Pembayaran',
      img: "assets/images/wallet.png",
      color: Color(0xffFF8225),
      destination: RootApp(),
    ),
    Item(
      title: 'Pengaturan',
      img: "assets/images/settings.png",
      color: Color(0xff2E236C),
      destination: RootApp(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GridItem(item: items[index]);
      },
    );
  }
}

class GridItem extends StatelessWidget {
  final Item item;

  const GridItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => item.destination),
        );
      },
      child: Card(
        elevation: 4,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                  item.color.withOpacity(0.5), BlendMode.srcIn),
              child: Image.asset(
                item.img,
                height: 50,
                width: 50,
                color: item.color,
                colorBlendMode: BlendMode.srcIn,
              ),
            ),
            SizedBox(height: 8),
            Text(
              item.title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class Item {
  final String title;
  final String img;
  final Color color;
  final Widget destination;

  Item(
      {required this.title,
      required this.img,
      required this.color,
      required this.destination});
}
