import 'package:flutter/material.dart';
import 'package:template_project/Model/Cart.dart';

class KeranjangPages extends StatefulWidget {
  const KeranjangPages({super.key});

  @override
  State<KeranjangPages> createState() => _KeranjangPagesState();
}

class _KeranjangPagesState extends State<KeranjangPages> {
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
            elevation: 4.0,
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              title: Text(item['nama']!),
              subtitle: Text(item['harga']!),
              trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      items.removeAt(index);
                    });
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
