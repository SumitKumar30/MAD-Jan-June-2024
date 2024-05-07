import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/models/products.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({Key? key}) : super(key: key);

  @override
  State<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products List'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('products').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          List<Products> products = [];
          snapshot.data?.docs.forEach((doc) {
            Products product = Products.fromMap(doc.data());
            product.id = doc.id;
            products.add(product);
          });
          return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                Products product = products[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text('Price: \$${product.price}'),
                  // trailing: Text('Qty: ${product.quantity}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                          Text('\$${product.price}',
                            style: TextStyle(fontSize: 16),
                          ),
                          IconButton(
                             icon: Icon(Icons.delete),
                             onPressed: () {
                                _deleteProduct(product.id);
                            },
                          ),
                      ],
                    ),
                );
              });
        },
      ),
    );
  }
  _deleteProduct(String productId) async {
    try {
      await FirebaseFirestore.instance
        .collection('products')
        .doc(productId)
        .delete();
      // Show a success message
      ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text('Product deleted successfully')),
      );
    } catch (e) {
      // Show an error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to delete product')),
      );
  }
}
}
