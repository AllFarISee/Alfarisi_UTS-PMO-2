import 'package:flutter/material.dart';

class RentalPage extends StatelessWidget {
  const RentalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _rentalItem(
          "Police Battery Car",
          "https://picsum.photos/500/300?random=10",
          "Rp 50.000 / Day",
        ),
        _rentalItem(
          "Children's Slide",
          "https://picsum.photos/500/300?random=11",
          "Rp 25.000 / Day",
        ),
        _rentalItem(
          "Wooden Horse",
          "https://picsum.photos/500/300?random=12",
          "Rp 20.000 / Day",
        ),
        _rentalItem(
          "Mini Playground",
          "https://picsum.photos/500/300?random=13",
          "Rp 70.000 / Day",
        ),
      ],
    );
  }

  Widget _rentalItem(String title, String imageUrl, String price) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                Text(
                  price,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 2, 95, 171),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text(
                      "Rental Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
