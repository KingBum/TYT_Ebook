import 'dart:async';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class AddItem extends StatefulWidget {
  const AddItem({Key? key}) : super(key: key);

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  final user = FirebaseAuth.instance.currentUser;
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerDesc = TextEditingController();

  GlobalKey<FormState> key = GlobalKey();

  CollectionReference _reference =
  FirebaseFirestore.instance.collection('books');

  String imageUrl = '';

  // _callback()  async {
  //     var _timer = Timer(Duration(microseconds: 500), () {
  //       Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(
  //               builder: (BuildContext context) => super.widget));
  //     });
  // }

  _selecImage(BuildContext context) async {

    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text('Create a post'),
            children: [
              SimpleDialogOption(
                padding: const EdgeInsets.all(20),
                child: const Text('Take a photo'),
                onPressed: () async {
                  Navigator.of(context).pop();
                  ImagePicker imagePicker = ImagePicker();
                  XFile? file =
                  await imagePicker.pickImage(source: ImageSource.camera);
                  print('${file?.path}');

                  if (file == null) return print("Error file roi ne");

                  String uniqueFileName =
                  DateTime.now().millisecondsSinceEpoch.toString();
                  print(uniqueFileName);
                  Reference referenceRoot = FirebaseStorage.instance.ref();

                  Reference referenceDirImages =
                  referenceRoot.child('images');

                  Reference referenceImageToUpload =
                  referenceDirImages.child(uniqueFileName);
                  try {
                    print("Dong1");
                    await referenceImageToUpload.putFile(File(file!.path));
                    print("Dong2");
                    imageUrl = await referenceImageToUpload.getDownloadURL();
                    // _callback();
                    print("Dong3");
                  } catch (error) {
                    print("Loi roi ne");
                  }
                },
              ),
              SimpleDialogOption(
                padding: const EdgeInsets.all(20),
                child: const Text('Choose from gallery'),
                onPressed: () async {
                  Navigator.of(context).pop();
                  ImagePicker imagePicker = ImagePicker();
                  XFile? file =
                  await imagePicker.pickImage(source: ImageSource.gallery);
                  print('${file?.path}');

                  if (file == null) return print("Error file roi ne");

                  String uniqueFileName =
                  DateTime.now().millisecondsSinceEpoch.toString();
                  print(uniqueFileName);
                  Reference referenceRoot = FirebaseStorage.instance.ref();

                  Reference referenceDirImages =
                  referenceRoot.child('images');

                  Reference referenceImageToUpload =
                  referenceDirImages.child(uniqueFileName);
                  try {
                    print("Dong1");
                    await referenceImageToUpload.putFile(File(file!.path));
                    print("Dong2");
                    imageUrl = await referenceImageToUpload.getDownloadURL();
                    // _callback();
                    print("Dong3");
                  } catch (error) {
                    print("Loi roi ne");
                  }
                },
              ),
              SimpleDialogOption(
                padding: const EdgeInsets.all(20),
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],

          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add an item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: key,
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
              // TextFormField(
              //   controller: _controllerAuthor,
              //   decoration:
              //   InputDecoration(hintText: 'Enter the Author of the item'),
              //   validator: (String? value) {
              //     if (value == null || value.isEmpty) {
              //       return 'Please enter the item quantity';
              //     }
              //
              //     return null;
              //   },
              // ),
              TextFormField(
                controller: _controllerDesc,
                decoration:
                InputDecoration(hintText: 'Enter the Desciptions of the item'),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the item quantity';
                  }

                  return null;
                },
              ),
              SizedBox(height: 30,),
              imageUrl.isEmpty ? Container() : SizedBox(
                  width: 120,
                  child: Image.network(imageUrl)),
              IconButton(
                  onPressed: () => _selecImage(context),
                  icon: Icon(Icons.upload)),
              ElevatedButton(
                  onPressed: () async {
                    if (imageUrl.isEmpty) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text('Please upload an image')));

                      return;
                    }

                    if (key.currentState!.validate()) {

                      String itemName = _controllerName.text;
                      String itemAuthor = user?.displayName as String;
                      String itemDesc = _controllerDesc.text;

                      //Create a Map of data
                      Map<String, String> dataToSend = {
                        'name': itemName,
                        'author': itemAuthor,
                        'desc': itemDesc,
                        'image': imageUrl,
                        'userid' : user?.uid as String
                      };

                      //Add a new item
                      _reference.add(dataToSend);
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