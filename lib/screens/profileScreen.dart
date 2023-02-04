import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const routeName = "/profileScreen";

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultTabController(
            length: 6,
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                bottom: const TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.white24,
                  indicatorColor: Colors.white,
                  tabs: [
                    const Center(child: Text('MỚI NHẤT', style: TextStyle(fontSize: 18, color: Colors.white),)),
                    const Center(child: Text('MỚI CẬP NHẬT', style: TextStyle(fontSize: 18, color: Colors.white),)),
                    const Center(child: Text('FULL', style: TextStyle(fontSize: 18, color: Colors.white),)),
                    const Center(child: Text('ĐÁNH GIÁ', style: TextStyle(fontSize: 18, color: Colors.white),)),
                    const Center(child: Text('YÊU THÍCH', style: TextStyle(fontSize: 18, color: Colors.white),)),
                    const Center(child: Text('XEM NHIỀU', style: TextStyle(fontSize: 18, color: Colors.white),)),
                  ],
                ),
              ),
              body: Stack(
                children: [
                  TabBarView(
                    children: [
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
                              author: "Cổ Liễu Chi",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
                              image: Image.asset(
                                Helper.getAssetName("hamburger2.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                              name: "Bậc Thầy Của Vũ Khí Hạt Nhân",
                              created: "Hôm qua",
                              chapter: 10,
                              author: "Cổ Liễu Chi",
                              categorys: ["Ngôn Tình", "Hài Hước", "Cổ Đại"],
                            ),CategoryCard(
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
                        home: false,
                        menu: false,
                        profile: true,
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
  CategoryCard(
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