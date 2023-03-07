import 'dart:async';

import 'package:ebook_tyt/screens/loginScreen.dart';
import 'package:ebook_tyt/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../const/colors.dart';
import '../services/auth-services.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';
import 'HomeScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const routeName = "/profileScreen";

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final user = FirebaseAuth.instance.currentUser;
  late Timer _timer;

  Future<void> inputData() async {
    final _userNameController = TextEditingController();

    // ignore: use_build_context_synchronously
    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                // prevent the soft keyboard from covering text fields
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _userNameController,
                  decoration: const InputDecoration(labelText: 'Your Name'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () async {
                    await user?.updateDisplayName(_userNameController.text);
                    // Clear the text fields
                    _userNameController.text = '';
                      // Hide the bottom sheet
                    Navigator.of(context).pop();
                    _timer = Timer(const Duration(milliseconds: 1000), () {
                      Navigator.of(context).pushReplacementNamed(ProfileScreen.routeName);
                    });
                  }, child: Text("Submit"),
                )
              ],
            ),
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: Helper.getScreenWidth(context),
                    height: Helper.getScreenHeight(context)*1.7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ca Nhan", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),),
                        SizedBox(height: 12,),
                        user != null ? Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: AppColor.placeholder,
                                child:
                                new Image.network('${user?.photoURL}')
                              ),
                            ),
                            GestureDetector(
                                onTap: () => inputData(),
                                child: Text('${user?.displayName}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: AppColor.blue),)),
                            Spacer(),
                            ElevatedButton(onPressed: () async {
                              await authService.signOut();
                              Get.to(() => const HomeScreen());
                            }, child: Text("Logout")),
                            Icon(Icons.arrow_forward_ios, size: 24,),
                          ],
                        ) :
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Wrapper()));
                          },
                          child: Row(
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
                              Spacer(),
                              Icon(Icons.arrow_forward_ios, size: 24,),
                            ],
                          ),
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