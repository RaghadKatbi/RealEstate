import 'package:flutter/material.dart';
import 'package:realstate/model/city.dart';
import '../mycustom_widgets/grid_item.dart';
import '../mycustom_widgets/header_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  City city =
      City(name: "",  id: 0,  createdAt: DateTime(2000), updatedAt: DateTime(252), cityImage: '');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Opacity(
              opacity: 0.2,
              child: Image.asset(
                "asset/images/img_2.png",
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                HeaderScreen(),
                const Padding(
                  padding: EdgeInsets.only(right: 28, top: 0),
                  child: Text(
                    "اختيار مدينة",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'cairo',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 28, top: 8),
                  child: Text(
                    "البحث عن العقارات داخل المدينة",
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'changes',
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: FutureBuilder(
                    future: city.getCities(),
                    builder: (BuildContext context,
                        AsyncSnapshot<dynamic> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      } else
                     {
                       return  GridView.builder(
                         itemCount: city.cities.length ,
                         padding: const EdgeInsets.all(12),
                         gridDelegate:
                         const SliverGridDelegateWithFixedCrossAxisCount(
                             crossAxisCount: 2),
                         itemBuilder: (BuildContext context, int index) {
                           return GridItem(name: snapshot.data![index].name! ?? "no name", pathImage: snapshot.data![index].cityImage! ?? "no path",);
                         },
                       );
                     }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
