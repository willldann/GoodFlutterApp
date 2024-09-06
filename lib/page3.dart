import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {'name': 'Orange', 'price': 15, 'stock': 1000},
    {'name': 'Apple', 'price': 20, 'stock': 1000},
    {'name': 'Banana', 'price': 5, 'stock': 1000},
    {'name': 'Mango', 'price': 15, 'stock': 1000},
    {'name': 'Orange', 'price': 10, 'stock': 1000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCard(
              name: products[index]['name'],
              price: products[index]['price'],
              stock: products[index]['stock'],
            );
          },
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final int price;
  final int stock;

  ProductCard({
    required this.name,
    required this.price,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          title: Text(
            name,
            style:const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$stock ready stock'),
              SizedBox(height: 4),
              Text(
                '\$$price',
                style:const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          trailing:const Icon(Icons.favorite_border),
        ),
      ),
    );
  }
}
