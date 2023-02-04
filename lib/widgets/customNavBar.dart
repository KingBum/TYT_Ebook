import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../screens/HomeScreen.dart';
import '../screens/menuScreen.dart';
import '../screens/searchScreen.dart';
import '../screens/downloadScreen.dart';
import '../screens/profileScreen.dart';
import '../utils/helper.dart';


class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key, required this.home, required this.menu, required this.search, required this.profile, required this.download}) : super(key: key);
  final bool home;
  final bool menu;
  final bool search;
  final bool profile;
  final bool download;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: Helper.getScreenWidth(context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              width: Helper.getScreenWidth(context),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (!home) {
                        Navigator.of(context)
                            .pushReplacementNamed(HomeScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        home
                            ? Image.asset(
                          Helper.getAssetName(
                              "compass.png", "virtual"),
                          width: 40,
                          height: 40,
                          color: AppColor.blue,
                        )
                            : Image.asset(
                          Helper.getAssetName("compass.png", "virtual"),
                          width: 40,
                          height: 40,
                        ),
                        home
                            ? Text("Khám Phá",
                            style: TextStyle(color: AppColor.blue))
                            : Text("Khám Phá"),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!menu) {
                        Navigator.of(context)
                            .pushReplacementNamed(MenuScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        menu
                            ? Image.asset(
                          Helper.getAssetName(
                              "menu.png", "virtual"),
                          width: 40,
                          height: 40,
                          color: AppColor.blue,
                        )
                            : Image.asset(
                          Helper.getAssetName("menu.png", "virtual"),
                          width: 40,
                          height: 40,
                        ),
                        menu
                            ? Text("Thể Loại",
                            style: TextStyle(color: AppColor.blue))
                            : Text("Thể Loại"),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!search) {
                        Navigator.of(context)
                            .pushReplacementNamed(SearchScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        search
                            ? Image.asset(
                          Helper.getAssetName(
                              "Search.png", "virtual"),
                          width: 40,
                          height: 40,
                          color: AppColor.blue,
                        )
                            : Image.asset(
                          Helper.getAssetName("Search.png", "virtual"),
                          width: 40,
                          height: 40,
                        ),
                        search
                            ? Text("Tìm Kiếm",
                            style: TextStyle(color: AppColor.blue))
                            : Text("Tìm Kiếm"),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!download) {
                        Navigator.of(context)
                            .pushReplacementNamed(DownloadScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        download
                            ? Image.asset(
                          Helper.getAssetName(
                              "download.png", "virtual"),
                          width: 40,
                          height: 40,
                          color: AppColor.blue,
                        )
                            : Image.asset(
                          Helper.getAssetName("download.png", "virtual"),
                          width: 40,
                          height: 40,
                        ),
                        download
                            ? Text("Offline",
                            style: TextStyle(color: AppColor.blue))
                            : Text("Offline"),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!profile) {
                        Navigator.of(context)
                            .pushReplacementNamed(ProfileScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        profile
                            ? Image.asset(
                          Helper.getAssetName(
                              "user.png", "virtual"),
                          width: 40,
                          height: 40,
                          color: AppColor.blue,
                        )
                            : Image.asset(
                          Helper.getAssetName("user.png", "virtual"),
                          width: 40,
                          height: 40,
                        ),
                        profile
                            ? Text("Cá Nhân",
                            style: TextStyle(color: AppColor.blue))
                            : Text("Cá Nhân"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.topCenter,
          //   child: SizedBox(
          //     height: 70,
          //     width: 70,
          //     child: FloatingActionButton(
          //       elevation: 0,
          //       backgroundColor: home ? AppColor.orange : AppColor.placeholder,
          //       onPressed: () {
          //         if (!home) {
          //           Navigator.of(context)
          //               .pushReplacementNamed(HomeScreen.routeName);
          //         }
          //       },
          //       child: Image.asset(
          //           Helper.getAssetName("home_white.png", "virtual")),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
