import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline, size: 80, color: Colors.white),
            SizedBox(height: 20),
            Text(
              "DreamBabyRent App",
              style: GoogleFonts.rubikBrokenFax(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "© Copyright by Alfarisi Azhar_23552011180",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
