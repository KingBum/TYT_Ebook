import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key? key}) : super(key: key);
  static const routeName = "/downloadScreen";

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: Helper.getScreenWidth(context),
                  height: Helper.getScreenHeight(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Truyện Trên Thiết Bị - Offline", style: TextStyle(fontSize: 24),),
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          Text("Đọc Gần Đây", style: TextStyle(fontSize: 16),),
                          Spacer(),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          Text("Yêu Thích Gần Đây", style: TextStyle(fontSize: 16),),
                          Spacer(),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          Text("Tải Gần Đây - Đọc Offline", style: TextStyle(fontSize: 16),),
                          Spacer(),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                      SizedBox(height: 16,),
                    ],
                  ),
                ),
              )
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: CustomNavBar(
                home: false,
                menu: false,
                profile: false,
                search: false,
                download: true,
              )),
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
        required String price})
      : _image = image,
        _name = name,
        _price = price,
        super(key: key);

  final String _name;
  final Image _image;
  final String _price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: MediaQuery.of(context).size.height/2.0,
      decoration: BoxDecoration(
        border: Border.all(width: 3.0),
        borderRadius: BorderRadius.all(
            Radius.circular(20.0) //                 <--- border radius here
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.radio_button_checked,
                  color: AppColor.orange,
                ),
                Icon(
                  Icons.favorite,
                  color: AppColor.secondary,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 160,
                height: 160,
                child: _image,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              _name,
              style: Helper.getTheme(context)
                  .headline4
                  ?.copyWith(color: AppColor.primary, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$$_price',
                  style: Helper.getTheme(context)
                      .headline4
                      ?.copyWith(color: AppColor.orange, fontSize: 24),
                ),
                SizedBox(width: 50),
                Icon(
                  Icons.add_circle_outline,
                  color: AppColor.orange,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}