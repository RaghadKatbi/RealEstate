import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class DetailsHome extends StatefulWidget {
  const DetailsHome({super.key});

  @override
  State<DetailsHome> createState() => _DetailsHomeState();
}

class _DetailsHomeState extends State<DetailsHome> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'));
    _controller.initialize().then(
      (_) {
        _controller.play();
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffd6e0eb),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset("asset/images/img.png"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 228.0, top: 23),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "الحلم",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'elmessiri'),
                  ),
                  Text(
                    " : الإسم",
                    style: TextStyle(fontSize: 20, fontFamily: 'elmessiri'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 249.0, top: 23),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "فيلا",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'elmessiri'),
                  ),
                  Text(
                    " : النوع",
                    style: TextStyle(fontSize: 20, fontFamily: 'elmessiri'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 238.0, top: 23),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "ايجار",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'elmessiri'),
                  ),
                  Text(
                    " : الغاية",
                    style: TextStyle(fontSize: 20, fontFamily: 'elmessiri'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 150.0, top: 23),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "يحوي 15 غرفة",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'elmessiri'),
                  ),
                  Text(
                    " : الوصف",
                    style: TextStyle(fontSize: 20, fontFamily: 'elmessiri'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 180.0, top: 23),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "15 غرفة",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'elmessiri'),
                  ),
                  Text(
                    " : عدد الغرف",
                    style: TextStyle(fontSize: 20, fontFamily: 'elmessiri'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 199.0, top: 23),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "5",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'elmessiri'),
                  ),
                  Text(
                    " : عدد الحمامات",
                    style: TextStyle(fontSize: 20, fontFamily: 'elmessiri'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 180.0, top: 23),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "15000000",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'elmessiri'),
                  ),
                  Text(
                    " : السعر",
                    style: TextStyle(fontSize: 20, fontFamily: 'elmessiri'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 185.0, top: 23),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "150 m2",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'elmessiri'),
                  ),
                  Text(
                    " : المساحة",
                    style: TextStyle(fontSize: 20, fontFamily: 'elmessiri'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 155.0, top: 23),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "جنوبي غربي",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'elmessiri'),
                  ),
                  Text(
                    " : الوجهة",
                    style: TextStyle(fontSize: 20, fontFamily: 'elmessiri'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 150.0, top: 23),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "سوبر ديلوكس",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'elmessiri'),
                  ),
                  Text(
                    " : الحالة",
                    style: TextStyle(fontSize: 20, fontFamily: 'elmessiri'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 210.0, top: 23),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "2",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'elmessiri'),
                  ),
                  Text(
                    " : عرض الشارع",
                    style: TextStyle(fontSize: 20, fontFamily: 'elmessiri'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 230.0, top: 23),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "امامي",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'elmessiri'),
                  ),
                  Text(
                    " : اتجاه",
                    style: TextStyle(fontSize: 20, fontFamily: 'elmessiri'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 163.0, top: 23),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "15 ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'elmessiri'),
                  ),
                  Text(
                    " : عدد المشاهدات",
                    style: TextStyle(fontSize: 20, fontFamily: 'elmessiri'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40.0, top: 23),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "يوجد بجانب مدرسة ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'elmessiri'),
                  ),
                  Text(
                    " : مميزات العقار",
                    style: TextStyle(fontSize: 20, fontFamily: 'elmessiri'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40.0, top: 23),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "حلب حلب الجديدة شمالى",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'elmessiri'),
                  ),
                  Text(
                    " : الموقع",
                    style: TextStyle(fontSize: 20, fontFamily: 'elmessiri'),
                  )
                ],
              ),
            ),
            _controller.value.isInitialized
                ? Center(
                    child:
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Stack(
                            children: [
                              SizedBox(height: 140, child: VideoPlayer(_controller)),
                              Center(child: Padding(
                                padding: const EdgeInsets.only(top: 48.0),
                                child: IconButton(onPressed: (){
                                  _controller.play();
                                  setState(() {

                                  });
                                }, icon: const Icon(Icons.play_circle,size: 50,),),
                              ))
                            ],
                          ),
                        ),
                  )
                : const Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    ));
  }
}
