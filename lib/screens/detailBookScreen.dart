import 'package:ebook_tyt/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';

class DetailBookScreen extends StatefulWidget {
  const DetailBookScreen({Key? key}) : super(key: key);
  static const routeName = "/detailBookScreen";

  @override
  State<DetailBookScreen> createState() => _DetailBookScreenState();
}

class _DetailBookScreenState extends State<DetailBookScreen> {
  List<String> widgetList = ['Cổ Đại', 'Điền Văn', 'Nữ Cường'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 20, right: 20),
            child: Container(
              width: Helper.getScreenWidth(context),
              height: Helper.getScreenHeight(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Container(
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.network(
                                  "https://picsum.photos/300/300",
                                  fit: BoxFit.cover,
                                ))),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hoa Roi Cua Phat",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: AppColor.primary),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Quoc Dat",
                            style: TextStyle(fontSize: 16, color: AppColor.blue),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text("Dang ra"),
                              SizedBox(
                                width: 15,
                              ),
                              Text("6 gio truoc")
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text("50 chuong"),
                              SizedBox(
                                width: 15,
                              ),
                              Text("Dang xem : 1")
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.pink,
                                size: 20,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("230"),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Icons.adjust,
                                size: 20,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("230"),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: widgetList.map((String value) {
                        return new Container(
                          color: AppColor.blue,
                          margin: new EdgeInsets.all(4.0),
                          child: new Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: new Text(
                                value,
                                style: new TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: AppColor.blue)),
                        child: Icon(
                          Icons.menu,
                          color: AppColor.blue,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: AppColor.blue)),
                        child: Icon(
                          Icons.rate_review,
                          color: AppColor.blue,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2, color: AppColor.blue)),
                        child: Icon(
                          Icons.library_add,
                          color: AppColor.blue,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_right,
                        size: 40,
                      ),
                      Text("Nguon: "),
                      Text(
                        "https://www.facebook.com/QuocDat",
                        style: TextStyle(color: AppColor.blue),
                      ),
                    ],
                  ),
                  CategoryCard(
                    title: "Ten Han Viet",
                    subtitle: "Dao truong, nga bat huong",
                  ),
                  CategoryCard(
                    title: "The Loai",
                    subtitle:
                        "Dao truong, nga bat huong Dao truong, nga bat huong Dao truong, nga bat huong",
                  ),
                  CategoryCard(
                    title: "Tinh Trang Ban Goc",
                    subtitle: "Dao truong, nga bat huong",
                  ),
                  CategoryCard(
                    title: "CP",
                    subtitle: "Dao truong, nga bat huong",
                  ),
                  CategoryCard(
                    title: "Tom tat mot cau",
                    subtitle: "Dao truong, nga bat huong",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextBook(
                    text:
                        "Tư tưởng đạo đức Hồ Chí Minh bắt nguồn từ truyền thống "
                        "đạo đức của dân tộc Việt Nam đã được hình thành, phát triển trong suốt "
                        "quá trình đấu tranh dựng nước và giữ nước; là sự vận dụng và phát triển "
                        "sáng tạo tư tưởng đạo đức cách mạng của chủ nghĩa Mác – Lênin. "
                        "Đó là sự tiếp thu có chọn lọc và phát triển những tinh hoa văn hóa, "
                        "đạo đức của nhân loại, cả phương Đông và phương Tây, mà Người đã tiếp thu "
                        "được trong quá trình hoạt động cách mạng đầy gian lao, thử thách và vô "
                        "cùng phong phú vì mục tiêu giải phóng dân tộc, giải phóng giai cấp, "
                        "giải phóng con người.Tư tưởng đạo đức Hồ Chí Minh là một hệ thống các quan điểm cơ bản và  toàn diện về đạo đức, bao gồm: vị trí, vai trò, nội dung của đạo đức; những phẩm chất đạo đức cơ bản và những nguyên tắc xây dựng nền đạo đức mới; yêu cầu rèn luyện đạo đức với mỗi người cách mạng.",
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          height: 120,
          width: Helper.getScreenWidth(context),
          top: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
            ),
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Row(
                children: [
                  new IconButton(
                    icon: new Icon(Icons.close,size: 30,),
                    highlightColor: Colors.pink,
                    onPressed: (){
                      Navigator.of(context)
                        .pushReplacementNamed(HomeScreen.routeName); },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Chi Tiet Truyen",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: AppColor.primary),
                  ),
                  Spacer(),
                  Icon(
                    Icons.flag_outlined,
                    size: 30,
                    color: AppColor.placeholder,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.share,
                    size: 30,
                    color: AppColor.placeholder,
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              color: Colors.white,
              width: Helper.getScreenWidth(context),
              height: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.download,
                        color: AppColor.blue,
                      ),
                      Text(
                        "Tai Ve",
                        style: TextStyle(color: AppColor.blue),
                      )
                    ],
                  ),
                  OutlinedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "DOC TRUYEN",
                        style: TextStyle(fontSize: 24, color: AppColor.blue),
                      ),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(width: 2.0, color: Colors.blue),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: AppColor.blue,
                      ),
                      Text(
                        "Yeu Thich",
                        style: TextStyle(color: AppColor.blue),
                      )
                    ],
                  ),
                ],
              ),
            )),
      ]),
    );
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard({
    Key? key,
    String? title,
    String? subtitle,
  })  : _title = title,
        _subtitle = subtitle,
        super(key: key);

  final String? _title;
  final String? _subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _title! + ":  ",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Container(
                width: Helper.getScreenWidth(context) / 2,
                child: Text(
                  _subtitle!,
                  style: TextStyle(fontSize: 16, color: AppColor.primary),
                ))
          ],
        ));
  }
}

class TextBook extends StatelessWidget {
  TextBook({
    Key? key,
    String? text,
  })  : _text = text,
        super(key: key);

  final String? _text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height,
      child: Text(_text!),
    );
  }
}
