import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(375, 812), splitScreenMode: true);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: ScreenUtil().setHeight(150),
                      child: Opacity(
                        opacity: 0.6,
                        child: Image.asset(
                          "asset/images/img_3.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: ScreenUtil().setHeight(80),
                    child: Text(
                      "معلومات حول التطبيق",
                      style: TextStyle(
                        backgroundColor: Color(0xff365271),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'change',
                        fontSize: ScreenUtil().setSp(18),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: 16.0, top: ScreenUtil().setHeight(20)),
                child: Text(
                  "أهداف التطبيق",
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(22),
                    color: Color(0xff1a395b),
                    fontFamily: 'changes',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Container(
                  width: double.infinity,
                  height: ScreenUtil().setHeight(120),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                  ),
                  child: Image.asset(
                    "asset/images/img_1.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(right: 10, top: 8, bottom: 8, left: 10),
                    child: Text(
                      "نحن شركة  متخصصة  في  تقديم خدمات عقارية متكاملة، نقدم خدمات شراء و بيع العقارات ،  إدارة الأملاك  ، تأجير الوحدات السكنية والتجارية ، تقييم العقارات ، وتقديم استشارات عقارية ، يتألف فريقنا من محترفين متخصصين في مجال العقارات ، يعملون على  تحقيق  أهداف  عملائنا  و  تلبية احتياجاتهم بشكل  وسيتم فحص الابنية المعروضة لدينا بالتعاون Building Rank مع شركة ",
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(19),
                          fontFamily: 'elmessiri'),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
