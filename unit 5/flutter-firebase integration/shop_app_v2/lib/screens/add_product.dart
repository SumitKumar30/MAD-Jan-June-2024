import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/models/products.dart';
import 'package:shopping_app/screens/products_list.dart';
import 'package:shopping_app/screens/search_product.dart';
import 'package:shopping_app/utils/constants.dart';
import 'package:shopping_app/utils/toast.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final _formKey = GlobalKey<FormState>();
  late String _id;
  late String _name;
  late String _price;
  late String _photoUrl;
  late String _description;
  late String _quantity;

  @override
  Widget build(BuildContext context) {
    String? userName = FirebaseAuth.instance.currentUser!.displayName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('User Name'),
              accountEmail: Text('john@ncu.org'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/alex_unsplash.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Add Product'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.view_array),
              title: Text('View Products'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductsList()));
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search Product'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchProduct()));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () async {
                FirebaseAuth.instance.signOut();
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, RoutesConstants.LOGIN);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.all(16),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Product ID',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter product ID';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _id = value!;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Product Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter product name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Price',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter price';
                    }
                    if (double.tryParse(value) == null) {
                      return 'Please enter valid price';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _price = double.parse(value!).toString();
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Photo URL',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter photo URL';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _photoUrl = value!;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Description',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter description';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _description = value!;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Quantity',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter quantity';
                      }
                      if (int.tryParse(value) == null) {
                        return 'Please enter valid quantity';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _quantity = int.parse(value!).toString();
                    }),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _resetForm,
                    child: Text('Reset'),
                  ),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: Text('Add'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _resetForm() {
    _formKey.currentState!.reset();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // TODO: Add product to database
      Products products = Products(
          id: _id,
          name: _name,
          price: _price,
          photo: _photoUrl,
          description: _description,
          quantity: _quantity);
      // Add product data to Cloud Firestore
      FirebaseFirestore.instance
          .collection('products')
          .add(products.toMap())
          .then((value) => createToast('Record Added!', context))
          .catchError((error) => print('Failed to add products: $error'));
    }
  }
}
