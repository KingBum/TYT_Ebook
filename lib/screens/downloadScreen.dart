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
                      Text("Truyện Trên Thiết Bị - Offline", style: TextStyle(fontSize: 24, color: AppColor.primary),),
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          Text("Đọc Gần Đây", style: TextStyle(fontSize: 16, color: AppColor.primary),),
                          Spacer(),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          Text("Yêu Thích Gần Đây", style: TextStyle(fontSize: 16, color: AppColor.primary),),
                          Spacer(),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          Text("Tải Gần Đây - Đọc Offline", style: TextStyle(fontSize: 16, color: AppColor.primary),),
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

