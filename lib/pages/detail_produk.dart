import 'package:flutter/material.dart';

class DetailProduk extends StatelessWidget {
  const DetailProduk({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> product =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Product'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('https://via.placeholder.com/150'),
            SizedBox(
              height: 16.0,
            ),
            Text(product['nama']!),
            Text(product['harga']!),
            SizedBox(
              height: 16.0,
            ),
            Text(product['deskripsi']!),
            Spacer(),
            ElevatedButton(onPressed: () {car}, child: Text('Tambah ke keranjang'))
          ],
        ),
      ),
    );
  }
}
