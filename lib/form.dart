import 'package:flutter/material.dart';
import 'package:stateful_widgets/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _productController = TextEditingController();
  final _productDesController = TextEditingController();
  bool? _checkBox, _listTileCheckBox = false;

  @override
  void dispose() {
    _productController.dispose();
    _productDesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Form",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextFormField(
              controller: _productController,
              decoration: InputDecoration(
                labelText: 'Product Name',
                prefixIcon: Icon(Icons.label),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _productDesController,
              decoration: InputDecoration(
                labelText: 'Product Description',
                prefixIcon: Icon(Icons.description),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DetailsForm(
                        productName: _productController.text,
                        productDescription: _productDesController.text,
                      );
                    },
                  ),
                );
              },
              child: Text(
                "Submit Form".toUpperCase(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.deepPurple),
              ),
            ),

            //two types of check boxes

            //1.checkBox
            Checkbox(
                tristate: true,
                checkColor: Colors.white,
                activeColor: Colors.purple,
                value: _checkBox,
                onChanged: (val) {
                  setState(() {
                    _checkBox = val;
                  });
                }),

            //2. check box list tile
            CheckboxListTile(
              checkColor: Colors.white,
              activeColor: Colors.purple,
              title: Text("Top Product"),
              tristate: true,
              value: _listTileCheckBox,
              onChanged: (val) {
                setState(
                  () {
                    _listTileCheckBox = val;
                  },
                );
              },
              //leading check box
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ],
        ),
      ),
    );
  }
}
