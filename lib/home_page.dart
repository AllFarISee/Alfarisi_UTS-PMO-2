import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'rental_page.dart';
import 'home_content.dart';
import 'about_page.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

final List<Widget> pages = [
  const HomeContent(), 
  const RentalPage(),   
  const AboutPage(), 
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 137, 207, 240),

      appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 0, 106, 172),
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/navbar.png', 
            width: 40,
            height: 40,
          ),

          const SizedBox(width: 10),

          Text(
            "DreamBabyRent",
           style: GoogleFonts.pacifico(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),

      actions: [
        IconButton(
          icon: const Icon(Icons.person, color: Colors.white),
          onPressed: () {
          },
        ),
      ],
    ),

      body: pages[currentIndex],

      // ───────────────────────── Navbar Bawah ─────────────────────────
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (i) {
        setState(() {
          currentIndex = i;
        });
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Rental"),
        BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
      ],
    ),

    );
  }

  // ─────────────────────── Widget Card Info ───────────────────────────
  Widget _infoCard(String title, String subtitle) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: const Icon(Icons.info, size: 40, color: Colors.blue),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
      ),
    );
  }

  // ────────────────────────── Widget Grid Content ─────────────────────────────
  Widget _gridItem(String title, String imgPath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                imgPath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
