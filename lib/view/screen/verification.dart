import 'dart:async';
import 'package:flutter/material.dart';
import 'package:realstate/view/screen/bottom_nav.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil

class Verification extends StatefulWidget {
  Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final _focusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];

  final _textControllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _focusNodes.forEach((node) => node.dispose());
    _textControllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  int _start = 30;

  String start = "30";
  bool resendButtonisEnable = false;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
     Timer.periodic(
      oneSec,
          (Timer timer) {
        setState(() {
          if (_start <= 0) {
            resendButtonisEnable = true;
            timer.cancel();
          } else {
            _start--;
            start = _start.toString().padLeft(2, "0");
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil
    ScreenUtil.init(context);

    return Scaffold(
      backgroundColor: const Color(0xf0d0dae6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(80),
                bottom: ScreenUtil().setHeight(10),
              ),
              child: Image.asset("asset/images/Artboard.png"),
            ),
            Padding(
              padding: EdgeInsets.all(ScreenUtil().setWidth(30)),
              child: Text(
                "ادخل رمز التحقق",
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(25),
                  color: const Color(0xff0c3c6d),
                  fontFamily: 'changes',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 4; i++)
                  SizedBox(
                    width: ScreenUtil().setWidth(70),
                    child: Padding(
                      padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                      child: TextFormField(
                        controller: _textControllers[i],
                        focusNode: _focusNodes[i],
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          counterText: '',
                        ),
                        onChanged: (value) {
                          if (value.length == 1 && i < 3) {
                            FocusScope.of(context).requestFocus(_focusNodes[i + 1]);
                          }
                          if (i == 3) {
                            FocusScope.of(context).unfocus();
                          }
                        },
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            TextButton(
              onPressed: resendButtonisEnable
                  ? () async {
                setState(() {
                  _start = 30;
                  resendButtonisEnable = false;
                });
                startTimer();
              }
                  : null,
              child: Text(
                "لم تتلقى الكود؟ أعد إرساله الآن ؟",
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(25),
                  color: const Color(0xff0c3c6d),
                  fontFamily: 'changes',
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            Text(
              "00 : $start",
              style: TextStyle(
                fontSize: ScreenUtil().setSp(20),
                color: const Color(0xff0c3c6d),
                fontFamily: 'changes',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
              child: SizedBox(
                width: ScreenUtil().setWidth(150),
                height: ScreenUtil().setHeight(50),
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor:
                    WidgetStatePropertyAll(Color(0xffd1d1d1)),
                  ),
                  onPressed: () {
                    if (_textControllers[0].text == "") {
                      print("0");
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyBottomNavigationBar(0),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    "إرسال",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff0c3c6d),
                      fontFamily: 'changes',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}