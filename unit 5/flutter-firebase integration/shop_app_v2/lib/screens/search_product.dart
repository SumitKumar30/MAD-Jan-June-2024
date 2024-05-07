import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/models/products.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({Key? key}) : super(key: key);

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  final TextEditingController _productIdController = TextEditingController();
  String _searchedProductId = '';
  Stream<QuerySnapshot>? _searchResults;

  void _searchProduct() {
    setState(() {
      _searchedProductId = _productIdController.text.trim();
      _searchResults = FirebaseFirestore.instance
          .collection('products')
          .where('id', isEqualTo: _searchedProductId)
          .snapshots();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Product'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _productIdController,
              decoration: InputDecoration(
                labelText: 'Product ID',
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(onPressed: _searchProduct, child: Text('Search')),
            SizedBox(height: 16),
            Expanded(
                child: StreamBuilder<QuerySnapshot>(
              stream: _searchResults,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }
                if (!snapshot.hasData) {
                  return Center(
                    child: Text('No Data Found!'),
                  );
                }
                List<Products> product = snapshot.data!.docs
                    .map((doc) => Products.fromMap(doc.data()))
                    .toList();
                return ListView.builder(
                    itemCount: product.length,
                    itemBuilder: (context, index) {
                      final prod = product[index];
                      return ListTile(
                        title: Text(prod.name),
                        subtitle: Text('Price: ${prod.price.toString()}'),
                        trailing: IconButton(onPressed: () {
                          // TO DO: Navigate to EditProductScreen
                        }, icon: Icon(Icons.edit)),
                      );
                    });
              },
            ))
          ],
        ),
      ),
    );
  }
}
