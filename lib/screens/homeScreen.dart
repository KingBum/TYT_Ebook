import 'package:ebook_tyt/screens/detailBookScreen.dart';
import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = "/homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, right: 10),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.of(context)
                                        .pushReplacementNamed(DetailBookScreen.routeName);
                                  },
                                  child: CategoryCard(
                                    image: Image.asset(
                                      Helper.getAssetName("hamburger2.jpg", "real"),
                                      fit: BoxFit.cover,
                                    ),
                                    name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                                    created: "Hôm qua",
                                    chapter: 10,
                                    author: "Cổ Liễu Chi",
                                    categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                                  ),
                                ),
                              ),Padding(
                                padding: const EdgeInsets.only(left: 10, right: 10),
                                child: CategoryCard(
                                  image: Image.asset(
                                    Helper.getAssetName("hamburger2.jpg", "real"),
                                    fit: BoxFit.cover,
                                  ),
                                  name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                                  created: "Hôm qua",
                                  chapter: 10,
                                  author: "Cổ Liễu Chi",
                                  categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                                ),
                              ),Padding(
                                padding: const EdgeInsets.only(left: 10, right: 10),
                                child: CategoryCard(
                                  image: Image.asset(
                                    Helper.getAssetName("hamburger2.jpg", "real"),
                                    fit: BoxFit.cover,
                                  ),
                                  name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                                  created: "Hôm qua",
                                  chapter: 10,
                                  author: "Cổ Liễu Chi",
                                  categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                                ),
                              ),Padding(
                                padding: const EdgeInsets.only(left: 10, right: 10),
                                child: CategoryCard(
                                  image: Image.asset(
                                    Helper.getAssetName("hamburger2.jpg", "real"),
                                    fit: BoxFit.cover,
                                  ),
                                  name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                                  created: "Hôm qua",
                                  chapter: 10,
                                  author: "Cổ Liễu Chi",
                                  categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                                ),
                              ),Padding(
                                padding: const EdgeInsets.only(left: 10, right: 10),
                                child: CategoryCard(
                                  image: Image.asset(
                                    Helper.getAssetName("hamburger2.jpg", "real"),
                                    fit: BoxFit.cover,
                                  ),
                                  name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                                  created: "Hôm qua",
                                  chapter: 10,
                                  author: "Cổ Liễu Chi",
                                  categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                                ),
                              ),Padding(
                                padding: const EdgeInsets.only(left: 10, right: 10),
                                child: CategoryCard(
                                  image: Image.asset(
                                    Helper.getAssetName("hamburger2.jpg", "real"),
                                    fit: BoxFit.cover,
                                  ),
                                  name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                                  created: "Hôm qua",
                                  chapter: 10,
                                  author: "Cổ Liễu Chi",
                                  categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                                ),
                              ),
                            ],
                          ),
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
      })
      : _image = image,
        _name = name,
        _author = author,
        _created = created,
        _chapter = chapter,
        _category = categorys,
        super(key: key);

  final String _name;
  final Image _image;
  final String _created;
  final int _chapter;
  final String _author;
  final List<String> _category;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
