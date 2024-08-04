import 'package:flutter/material.dart';
import 'package:realstate/view/screen/register.dart';
import 'package:realstate/view/screen/verification.dart';
import 'package:realstate/view/mycustom_widgets/my_textfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final TextEditingController numberController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: const Color(0xf0d0dae6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: ScreenUtil().setHeight(100),
                bottom: ScreenUtil().setHeight(60),),
              child: Image.asset("asset/images/Artboard.png"),
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: myTextFormField(
                          hintText: "رقم الهاتف",
                          icon: Icons.phone,
                          textInputType: TextInputType.phone,
                          maxLine: 1,
                          maxLength: 9,
                          textEditingController: numberController,
                          enable: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'الرجاء إدخال رقم الهاتف';
                            }
                            if (!value.contains(RegExp(r'^[0-9]+$'))) {
                              return 'رقم الهاتف يجب أن يحتوي على أرقام فقط';
                            }
                            return null;
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: myTextFormField(
                          hintText: "كلمة المرور",
                          icon: Icons.visibility,
                          textInputType: TextInputType.visiblePassword,
                          maxLine: 1,
                          maxLength: 30,
                          textEditingController: passwordController,
                          enable: false,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'الرجاء إدخال كلمة المرور';
                            }
                            if (value.length < 6) {
                              return 'كلمة المرور يجب أن تكون 6 أحرف على الأقل';
                            }
                            return null;
                          }),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                        child: Text(
                          "ليس لديك حساب ؟ ",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontFamily: 'changes',
                              color: Color(0xff0c3c6d),
                              fontSize: ScreenUtil().setSp(25),
                              decoration: TextDecoration.underline),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                          width: 180.w,
                          // Use ScreenUtil for responsive width
                          height: 50.h,
                          // Use ScreenUtil for responsive height
                          child: ElevatedButton(
                              style: const ButtonStyle(
                                  backgroundColor:
                                  WidgetStatePropertyAll(Color(0xffd1d1d1))),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // If the form is valid, proceed to the next screen
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Verification(),
                                    ),
                                  );
                                }
                              },
                              child: Text(
                                "تسجيل الدخول",
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(18),
                                    color: Color(0xff0c3c6d),
                                    fontFamily: 'changes'),
                              ))),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
