import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            alwaysIncludeSemantics: true,
            opacity: 0.1,
            child: Image.asset(
              "asset/images/img_2.png",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(45)),
                    child: SizedBox(
                      width: double.infinity,
                      height: 180,
                      child: Opacity(
                        opacity: 0.6,
                        child: Image.asset(
                          "asset/images/img_2.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 10,
                    top: 50,
                    child: Text(
                      "صفحة التواصل",
                      style: TextStyle(
                          //backgroundColor: Color(0xff365271),
                          color: Color(0xff365271),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'change',
                          fontSize: 20),
                    ),
                  ),
                ]),
                const Padding(
                  padding: EdgeInsets.only(top: 18.0),
                  child: Text(
                    "ابق على تواصل معنا",
                    style: TextStyle(
                        //backgroundColor: Color(0xff365271),
                        color: Color(0xff365271),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'change',
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18.0, 30, 18, 18),
                  child: myTextFormField(
                      hintText: "الاسم ",
                      icon: Icons.person_2,
                      textInputType: TextInputType.name,
                      maxLine: 1,
                      maxLength: 10,
                      textEditingController: name,
                      enable: true),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
                  child: myTextFormField(
                      hintText: "الإيميل ",
                      icon: Icons.email,
                      textInputType: TextInputType.emailAddress,
                      maxLine: 1,
                      maxLength: 10,
                      textEditingController: email,
                      enable: true),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18.0, 0, 18, 18),
                  child: myTextFormField(
                      hintText: "\n الرسالة ",
                      icon: Icons.message,
                      textInputType: TextInputType.name,
                      maxLine: 3,
                      maxLength: 10,
                      textEditingController: message,
                      enable: true),
                ),
                SizedBox(
                    width: 120,
                    height: 50,
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Color(0xffd1d1d1))),
                        onPressed: () {

                        },
                        child: const Text(
                          "إرسال",
                          style: TextStyle(
                              fontSize: 17, color: Color(0xff0c3c6d)),
                        ))),
                Card(
                  elevation: 8,
                  margin: const EdgeInsets.all(18),
                  color: Colors.blue.shade50,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "0966333221",
                              style: TextStyle(fontFamily: 'change'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.phone),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("engabdulaziz@yahoo.com"),
                            Icon(Icons.email),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  " حلب - المحافظة - شارع الهندسة\n بعد مفرق مديرية التعاون السكني ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontFamily: 'change'),
                                ),
                                TextButton(
                                    onPressed: () async {
                                      final Uri _url = Uri.parse(
                                          'https://www.google.com/maps/place/%D8%A7%D9%84%D9%85%D8%AD%D8%AA%D8%B1%D9%81+%D9%84%D9%84%D9%87%D9%86%D8%AF%D8%B3%D8%A9+%D9%88%D8%A7%D9%84%D8%A8%D9%86%D8%A7%D8%A1%E2%80%AD/@36.2068136,37.1333305,17z/data=!3m1!4b1!4m6!3m5!1s0x152ff9b114a1c0bd:0xc1a3980f7bb30d7c!8m2!3d36.2068093!4d37.1359054!16s%2Fg%2F11v66ggnb5?entry=ttu');
                                      if (!await launchUrl(_url)) {
                                        throw Exception(
                                            'Could not launch $_url');
                                      }
                                    },
                                    child: const Text(
                                      "اضغط لاستعراض الموقع",
                                      style: TextStyle(
                                          fontFamily: 'change',
                                          color: Color(0xff0c3c6d),
                                          fontWeight: FontWeight.w900),
                                    ))
                              ],
                            ),
                            const Icon(Icons.location_pin),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget myTextFormField(
      {required String hintText,
      required IconData icon,
      required TextInputType textInputType,
      required int maxLine,
      required int maxLength,
      required TextEditingController textEditingController,
      required bool enable}) {
    return TextFormField(
      textAlign: TextAlign.right,
      maxLength: maxLength,
      maxLines: maxLine,
      enabled: enable,
      cursorColor: Colors.grey,
      controller: textEditingController,
      decoration: InputDecoration(
          counterText: "",
          hintText: hintText,
          hintStyle: const TextStyle(fontFamily: 'cairo'),
          suffixIcon: Container(
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: const Color(0xff657c90)),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: Colors.transparent)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: Colors.transparent)),
          //errorText: " Error ",
          fillColor: Colors.blueGrey.shade50,
          filled: true,
          alignLabelWithHint: true,
          border: InputBorder.none),
    );
  }
}
