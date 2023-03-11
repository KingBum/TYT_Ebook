import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'HomeScreen.dart';

class EditItem extends StatelessWidget {
  EditItem(this._shoppingItem, {Key? key}) {
    _controllerName = TextEditingController(text: _shoppingItem['name']);
    _controllerQuantity =
        TextEditingController(text: _shoppingItem['desc']);

    _reference = FirebaseFirestore.instance
        .collection('books')
        .doc(_shoppingItem['id']);
  }

  Map _shoppingItem;
  late DocumentReference _reference;

  late TextEditingController _controllerName;
  late TextEditingController _controllerQuantity;
  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit an item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                controller: _controllerName,
                decoration:
                InputDecoration(hintText: 'Enter the name of the item'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the item name';
                  }

                  return null;
                },
              ),
              TextFormField(
                controller: _controllerQuantity,
                decoration:
                InputDecoration(hintText: 'Enter the quantity of the item'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the item quantity';
                  }

                  return null;
                },
              ),
              ElevatedButton(
                  onPressed: () async {
                    if (_key.currentState!.validate()) {
                      String name = _controllerName.text;
                      String desc = _controllerQuantity.text;

                      //Create the Map of data
                      Map<String,String> dataToUpdate={
                        'name':name,
                        'desc':desc
                      };

                      //Call update()
                      _reference.update(dataToUpdate);
                      _controllerName.text = "";
                      _controllerQuantity.text= "";
                      Get.to(() => const HomeScreen());
                    }
                  },
                  child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}