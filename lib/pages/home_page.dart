import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      'nama': 'Roti Tawar',
      'harga': 'Rp 10.000',
      'deskripsi': 'ini adalah roti'
    },
    {
      'nama': 'Roti COklat',
      'harga': 'Rp 10.000',
      'deskripsi': 'ini adalah roti'
    },
    {
      'nama': 'Roti Keju',
      'harga': 'Rp 10.000',
      'deskripsi': 'ini adalah roti',
    },
  ];
  // const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Pages'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/keranjang');
              },
              icon: Icon(Icons.shopping_cart))
        ],
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
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product['nama']!,
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    product['harga']!,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Flexible(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/detail',
                              arguments: product);
                        },
                        child: Text('Detail'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
