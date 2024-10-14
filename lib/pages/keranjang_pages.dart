import 'package:flutter/material.dart';
import 'package:template_project/Model/Cart.dart';

class KeranjangPages extends StatelessWidget {
  const KeranjangPages({super.key});

  @override
  Widget build(BuildContext context) {
    final items = cart.getItems();
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              title: Text(item['nama']!),
              subtitle: Text(item['harga']!),
              trailing: IconButton(
                  onPressed: () {
                    items.removeAt(index);
                    (context as Element).reassemble();
                  },
                  icon: Icon(Icons.delete)),
            ),
          );
        },
        itemCount: items.length,
      ),
    );
  }
}
