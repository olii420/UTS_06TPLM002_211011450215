import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shoes"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            shoeItem("Nike SB Zoom Blazer", "8,785", Colors.purple),
            shoeItem("Nike Air Zoom Pegasus", "9,995", Colors.blue),
            shoeItem("Nike ZoomX Vaporfly", "21,695", Colors.pink),
            shoeItem("Nike Air Force 1 '550", "6,295", Colors.grey),
            shoeItem("Nike Waffle One", "8,295", Colors.orange),
          ],
        ),
      ),
    );
  }

  Widget shoeItem(String name, String price, Color color) {
    return Card(
      color: color,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(name, style: const TextStyle(color: Colors.white)),
        subtitle: Text("Price: ₹$price", style: const TextStyle(color: Colors.white70)),
        trailing: const Icon(Icons.shopping_cart, color: Colors.white),
      ),
    );
  }
}
