import 'package:flutter/material.dart';
import 'package:template_project/Model/Cart.dart';

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
            Image.asset(product['gambar']!),
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
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    cart.addToCart(product);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                            '${product['nama']} berhasil di tambahkan ke keranjang')));
                  },
                  child: Text('Tambah ke keranjang')),
            )
          ],
        ),
      ),
    );
  }
}
