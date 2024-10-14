import 'package:flutter/material.dart';
import 'package:template_project/pages/detail_produk.dart';
import 'package:template_project/pages/home_page.dart';
import 'package:template_project/pages/keranjang_pages.dart';
import 'package:template_project/pages/tentang_aplikasi_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/detail': (context) => DetailProduk(),
        '/keranjang': (context) => KeranjangPages(),
        '/tentang_aplikasi': (context) => TentangAplikasiPages(),
      },
    );
  }
}
