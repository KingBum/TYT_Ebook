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
          SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: Helper.getScreenWidth(context),
                    height: Helper.getScreenHeight(context)*1.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ca Nhan", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),),
                        SizedBox(height: 12,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: AppColor.placeholder,
                                child: IconButton(
                                  icon: Icon(
                                    Icons.person,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                  },
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Chao mung ban den voi TYT", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                Text("Dang nhap/ Dang ky", style: TextStyle(fontSize: 14)),
                              ],
                            ),
                            SizedBox(width: 30,),
                            Icon(Icons.arrow_forward_ios, size: 24,),
                          ],
                        ),
                        SizedBox(height: 16,),
                        Text("TYT Writer", style: TextStyle(fontSize: 20),),
                        CategoryCard(icon: Icon(Icons.library_add, size: 30,), name: "Tao truyen moi"),
                        CategoryCard(icon: Icon(Icons.library_books, size: 30,), name: "Truyen cua toi"),
                        Text("Thong Bao", style: TextStyle(fontSize: 20)),
                        CategoryCard(icon: Icon(Icons.notifications_active, size: 30,), name: "Thong bao cua toi"),
                        Text("Danh Sach Truyen", style: TextStyle(fontSize: 20),),
                        CategoryCard(icon: Icon(Icons.library_add, size: 30,), name: "Bo suu tap cua toi"),
                        CategoryCard(icon: Icon(Icons.library_add_check, size: 30,), name: "Bo suu tap yeu thich"),
                        CategoryCard(icon: Icon(Icons.library_books, size: 30,), name: "Bo suu tap cong dong TYT"),
                        Text("Danh Gia Truyen", style: TextStyle(fontSize: 20),),
                        CategoryCard(icon: Icon(Icons.star_border, size: 30,), name: "Nhan xet cua toi"),
                        CategoryCard(icon: Icon(Icons.rate_review, size: 30,), name: "Cong dong truyen"),
                        Text("Cai Dat", style: TextStyle(fontSize: 20),),
                        CategoryCard(icon: Icon(Icons.handyman, size: 30,), name: "Giao dien truyen doc"),
                        CategoryCard(icon: Icon(Icons.light_mode, size: 30,), name: "Giao dien ung dung"),
                        CategoryCard(icon: Icon(Icons.menu, size: 30,), name: "The loai"),
                        Text("Thong Tin", style: TextStyle(fontSize: 20),),
                        CategoryCard(icon: Icon(Icons.error_outline, size: 30,), name: "Gop y, danh gia ung dung"),
                        CategoryCard(icon: Icon(Icons.mail, size: 30,), name: "Gui mail cho TYT"),
                        CategoryCard(icon: Icon(Icons.share, size: 30,), name: "Chia se ung dung"),
                        CategoryCard(icon: Icon(Icons.security, size: 30,), name: "Chinh sach bao mat"),
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
                profile: true,
                search: false,
                download: false,
              )),
        ],
      ),
    );
  }
}


class CategoryCard extends StatelessWidget {
  CategoryCard(
      {Key? key,
        required Widget icon,
        required String name,
      })
      : _icon = icon,
        _name = name,
        super(key: key);

  final String _name;
  final Widget _icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: _icon,
            ),
            Text(_name, style: Helper.getTheme(context).headline4,)
          ],
        )
    );
  }
}