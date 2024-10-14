import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> products = [
    {'nama': 'Roti Tawar', 'harga': 'Rp 10.000'},
    {'nama': 'Roti COklat', 'harga': 'Rp 10.000'},
    {'nama': 'Roti Keju', 'harga': 'Rp 10.000'},
  ];
  // const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Pages'),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 3,
        padding: EdgeInsets.all(8.0),
        children: products.map((product) {
          return Card(
            elevation: 4.0,
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product['nama']!,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
