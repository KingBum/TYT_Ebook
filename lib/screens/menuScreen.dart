import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);
  static const routeName = "/menuScreen";

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List<String> widgetList = ['Cổ Đại', 'Điền Văn', 'Nữ Cường', 'Nữ Phụ', 'Trinh Thám', 'Dị Năng', 'Dị Giới', 'Võng Du', 'Linh Dị', 'Trọng Sinh', 'Quân Sự', 'Lịch Sử', 'Thám Hiểm', 'Huyền Huyễn'
    , 'Khoa Huyễn', 'Hệ Thống',
    'Tiểu Thuyết',
    'Phương tây',
    'Việt Nam',
    'Đoản Văn',
    'Khác',
    'Khác','Cổ Đại', 'Điền Văn', 'Nữ Cường', 'Nữ Phụ', 'Trinh Thám', 'Dị Năng', 'Dị Giới', 'Võng Du', 'Linh Dị', 'Trọng Sinh', 'Quân Sự', 'Lịch Sử', 'Thám Hiểm', 'Huyền Huyễn'
    , 'Khoa Huyễn', 'Hệ Thống',
    'Tiểu Thuyết',
    'Phương tây',
    'Việt Nam',
    'Đoản Văn',
    'Khác',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            body: Stack(
                children: [
                  Positioned(
                    height: 120,
                    width: Helper.getScreenWidth(context),
                    top: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Text("TYT", style: TextStyle(fontSize: 24),),
                          Spacer(),
                          Icon(Icons.filter_list, size: 28,)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                      width: MediaQuery.of(context).size.height,
                      height: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(60.0),
                        child:
                        GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 3,
                          controller: new ScrollController(keepScrollOffset: false),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          // Generate 100 widgets that display their index in the List.
                          children: widgetList.map((String value) {
                            return new Container(
                              color: AppColor.blue,
                              margin: new EdgeInsets.all(4.0),
                              child: new Center(
                                child: new Text(
                                  value,
                                  style: new TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: CustomNavBar(
                        home: false,
                        menu: true,
                        profile: false,
                        search: false,
                        download: false,
                      )),
                ]
            ),
          ),
        ],
      ),
    );
  }
}