import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);
  static const routeName = "/searchScreen";

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultTabController(
            length: 6,
            child: Scaffold(
              body: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.height,
                    height: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          SizedBox(height: 300,),
                          Text("Ví dụ tìm truyện Cô Vợ Ngọt Ngào Có Chút Bất Lương, bạn có thể nhập co vo ngot ngao", style: TextStyle(fontSize: 20),),
                          SizedBox(height: 30,),
                          Text("Muốn chính xác kết quả hơn, bạn thêm dấu nháy \" vào cụm từ cần tìm như : \" cô vợ ngọt ngào \" ", style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: CustomNavBar(
                        home: false,
                        menu: false,
                        profile: false,
                        search: true,
                        download: false,
                      )),
                ]
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