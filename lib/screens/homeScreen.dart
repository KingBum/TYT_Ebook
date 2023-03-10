import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ebook_tyt/screens/detailBookScreen.dart';
import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';
import 'package:timeago/timeago.dart' as timeago;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = "/homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _Students =
  FirebaseFirestore.instance.collection('books').orderBy('createdAt', descending: true).limit(10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultTabController(
            length: 6,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(90.0),
                child: AppBar(
                  title: const Text('TYT Ebook'),
                  centerTitle: true,
                  bottom: const TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.blue,
                    indicatorColor: Colors.blue,
                    // indicatorSize: ,
                    indicatorWeight: 8,
                    tabs: [
                      Padding(
                        padding: EdgeInsets.only(bottom:8.0),
                        child: Center(child: Text('MỚI NHẤT', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom:8.0),
                        child: const Center(child: Text('MỚI CẬP NHẬT', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom:8.0),
                        child: const Center(child: Text('FULL', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom:8.0),
                        child: const Center(child: Text('ĐÁNH GIÁ', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom:8.0),
                        child: const Center(child: Text('YÊU THÍCH', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom:8.0),
                        child: const Center(child: Text('XEM NHIỀU', style: TextStyle(fontSize: 18, color: Colors.white),)),
                      ),
                    ],
                  ),
                  backgroundColor: Colors.blue
                ),
              ),
              body: Stack(
                children: [
                  TabBarView(
                    children: [
                      StreamBuilder(
                        stream: _Students.snapshots(),
                        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                          if (streamSnapshot.hasData) {
                            return ListView.builder(
                              itemCount: streamSnapshot.data!.docs.length,
                              itemBuilder: (context, index) {
                                final DocumentSnapshot documentSnapshot =
                                streamSnapshot.data!.docs[index];


                                // Convert time
                                Timestamp stamp = documentSnapshot['createdAt'];
                                DateTime date = stamp.toDate();
                                final time = timeago.format(date);

                                return CategoryCard(
                                  image: Image.network(documentSnapshot['image']),
                                  name: documentSnapshot['name'],
                                  author: documentSnapshot['author'],
                                  created: '${time}',
                                  chapter: 2,
                                  categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                                  onclick: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => DetailBookScreen(
                                            documentSnapshot.reference.id.toString())));
                                  },
                                );
                              },
                            );
                          }

                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 1",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 1",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 1",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 1",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 1",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 1",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 2",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 2",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 2",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 2",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 2",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 3",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 3",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 3",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 3",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],

                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 4",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 4",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi 4",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),
                          ],
                        ),
                      ),
                      CategoryCard(
                        image: Image.asset(
                          Helper.getAssetName("hamburger2.jpg", "real"),
                          fit: BoxFit.cover,
                        ),
                        name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                        created: "Hôm qua",
                        chapter: 10,
                        author: "Cổ Liễu Chi 5",
                        categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                      ),
                    ],
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: CustomNavBar(
                        home: true,
                        menu: false,
                        profile: false,
                        search: false,
                        download: false,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key,
        required Image image,
        required String name,
        required String author,
        required String created,
        required int chapter,
        required List<String> categorys,
        Function()? onclick,
      })
      : _image = image,
        _name = name,
        _author = author,
        _created = created,
        _chapter = chapter,
        _category = categorys,
        _onclick = onclick,
        super(key: key);

  final String _name;
  final Image _image;
  final String _created;
  final int _chapter;
  final String _author;
  final List<String> _category;
  final Function()? _onclick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _onclick ,
      child: Container(
        width: MediaQuery.of(context).size.height,
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Container(
                width: 80,
                height: 80,
                child: _image,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      width: 240,
                      child: Text(
                        _name,
                        overflow: TextOverflow.ellipsis,
                        style: Helper.getTheme(context)
                            .headline4
                            ?.copyWith(color: AppColor.primary, fontSize: 20),
                      ),
                    ),
                  ),
                  Row(
                    children : [
                      Text(
                        _created,
                        style: Helper.getTheme(context)
                            .headline5
                            ?.copyWith(color: AppColor.primary, fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "+   $_author",
                          style: Helper.getTheme(context)
                              .headline5
                              ?.copyWith(color: AppColor.primary, fontSize: 16),
                        ),
                      ),
                    ]
                  ),
                  Text(
                    "$_chapter chương",
                    style: Helper.getTheme(context)
                        .headline5
                        ?.copyWith(color: AppColor.primary, fontSize: 16),
                  ),
                  Flexible(
                    child: Container(
                      width: 240,
                      child: Row(
                        children: [
                          for ( var i in _category )
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: new Text("$i".toString()),
                            )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
