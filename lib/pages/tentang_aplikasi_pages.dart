import 'package:flutter/material.dart';

class TentangAplikasiPages extends StatelessWidget {
  const TentangAplikasiPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tentang Aplikasi'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
                'Dibuat Oleh: Ahmad Putra Firdaus \nNIM: 362358302028 \nVersi: 1.0'),
          ],
        ),
      ),
    );
  }
}
