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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
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
                        Image.asset(
                            Helper.getAssetName("Navbar.png", "virtual")),
                        Image.asset(
                          Helper.getAssetName("Search.png", "virtual"),
                          width: 30,
                          height: 30,
                          color: AppColor.secondary,)
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
                    child: DropdownButtonHideUnderline(
                      child: SizedBox(
                        width: 150,
                        child: DropdownButton(
                          value: "current location",
                          items: [
                            DropdownMenuItem(
                              child: Text("Work Place"),
                              value: "current location",
                            ),
                          ],
                          icon: Image.asset(
                            Helper.getAssetName(
                                "dropdown_filled.png", "virtual"),
                          ),
                          style: Helper.getTheme(context).headline4,
                          onChanged: (_) {},
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text("Choose your delicous meal"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Restaurants",
                          style: Helper.getTheme(context).headline5,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),

                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Wrap(
                            spacing: 20.0, // gap between adjacent chips
                            runSpacing: 20.0, // gap between lines
                            children: <Widget>[
                              CategoryCard(
                                image: Image.asset(
                                  Helper.getAssetName("hamburger2.jpg", "real"),
                                  fit: BoxFit.cover,
                                ),
                                name: "Offers",
                                price: "50",
                              ),
                              CategoryCard(
                                image: Image.asset(
                                  Helper.getAssetName("rice2.jpg", "real"),
                                  fit: BoxFit.cover,
                                ),
                                name: "Sri Lankan",
                                price: "70",
                              ),

                              CategoryCard(
                                image: Image.asset(
                                  Helper.getAssetName("pizza.jpg", "real"),
                                  fit: BoxFit.cover,
                                ),
                                name: "Spiza",
                                price: "70",
                              ),
                              CategoryCard(
                                image: Image.asset(
                                  Helper.getAssetName("pizza2.jpg", "real"),
                                  fit: BoxFit.cover,
                                ),
                                name: "Pizza",
                                price: "70",
                              ),
                              CategoryCard(
                                image: Image.asset(
                                  Helper.getAssetName("pizza3.jpg", "real"),
                                  fit: BoxFit.cover,
                                ),
                                name: "Pizza KB",
                                price: "90",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Restaurants",
                          style: Helper.getTheme(context).headline5,
                        ),
                        TextButton(onPressed: () {}, child: Text("View all"))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
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