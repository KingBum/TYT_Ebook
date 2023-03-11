import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ebook_tyt/screens/HomeScreen.dart';
import 'package:ebook_tyt/screens/editBookScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../const/colors.dart';
import '../utils/helper.dart';

class DetailBookScreen extends StatelessWidget {
  DetailBookScreen(this.itemId, {Key? key}) : super(key: key) {
    _reference =
        FirebaseFirestore.instance.collection('books').doc(itemId);
    _futureData = _reference.get();
  }
  String itemId;
  late DocumentReference _reference;

  late Future<DocumentSnapshot> _futureData;
  late Map data;

  List<String> widgetList = ['Cổ Đại', 'Điền Văn', 'Nữ Cường'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<DocumentSnapshot>(
        future: _futureData,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Some error occurred ${snapshot.error}'));
          }

          if (snapshot.hasData) {
            //Get the data
            DocumentSnapshot documentSnapshot = snapshot.data;
            data = documentSnapshot.data() as Map;
            Timestamp stamp = data['createdAt'];
            DateTime date = stamp.toDate();
            final time = timeago.format(date);
            //display the data
            return Padding(
              padding: const EdgeInsets.only(top: 32, right: 16, left: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Container(
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.network(
                                  data['image'],
                                  fit: BoxFit.cover,
                                ))),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['name'],
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: AppColor.primary),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            data['author'],
                            style: TextStyle(fontSize: 16, color: AppColor.blue),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text("Dang ra"),
                              SizedBox(
                                width: 15,
                              ),
                              Text('${time}')
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text("50 chuong"),
                              SizedBox(
                                width: 15,
                              ),
                              Text("Dang xem : 1")
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.pink,
                                size: 20,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("230"),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Icons.adjust,
                                size: 20,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("230"),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: widgetList.map((String value) {
                        return new Container(
                          color: AppColor.blue,
                          margin: new EdgeInsets.all(4.0),
                          child: new Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: new Text(
                                value,
                                style: new TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: AppColor.blue)),
                        child: Icon(
                          Icons.menu,
                          color: AppColor.blue,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 2, color: AppColor.blue)),
                        child:
                        IconButton(
                            onPressed: () {
                              //add the id to the map
                              data['id'] = itemId;

                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EditItem(data)));
                            },
                            icon: Icon(Icons.rate_review,color: AppColor.blue,)),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: AppColor.blue)),
                        child: Icon(
                          Icons.library_add,
                          color: AppColor.blue,
                        ),
                      ),
                      Spacer(),
                      IconButton(onPressed: () async {
                        //Delete the item
                        await _reference.delete();
                        Get.to(() => const HomeScreen());
                      }, icon: Icon(Icons.delete))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_right,
                        size: 40,
                      ),
                      Text("Nguon: "),
                      Text(
                        "https://www.facebook.com/QuocDat",
                        style: TextStyle(color: AppColor.blue),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Text(data['desc'])
                ],
              ),
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
