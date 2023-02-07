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
          Scaffold(
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
        ],
      ),
    );
  }
}

