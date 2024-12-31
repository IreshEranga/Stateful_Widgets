import 'package:flutter/material.dart';

class DetailsForm extends StatelessWidget {
  final String productName;
  final String productDescription;

  const DetailsForm({
    super.key,
    required this.productName,
    required this.productDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Details",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 20.0),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(Icons.label, color: Colors.blue),
                title: Text(
                  "Product Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(productName),
              ),
            ),
            Card(
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(Icons.description, color: Colors.blue),
                title: Text(
                  "Product Description",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(productDescription),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
