import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  final String description;

  const ProductDetail({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 123, 190),
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Gambar Produk
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(image, height: 200, fit: BoxFit.cover),
            ),
            const SizedBox(height: 16),

            // Info Produk
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),

            Row(
              children: [
                Text(
                  "\$$price",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  "In Stock",
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
            const SizedBox(height: 12),

            Text(
              description,
              style: const TextStyle(color: Colors.black87),
            ),
            const SizedBox(height: 20),

            // Tombol Beli
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_circle_outline),
                ),
                const Text("1", style: TextStyle(fontSize: 18)),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle_outline),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text("Buy Now"),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Info Delivery
            Card(
              child: ListTile(
                leading: const Icon(Icons.local_shipping),
                title: const Text("Free Delivery"),
                subtitle: const Text("Enter your postal code for availability"),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.refresh),
                title: const Text("Return Delivery"),
                subtitle: const Text("Free 30 Days Delivery Returns"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
