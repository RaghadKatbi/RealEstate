import 'package:flutter/material.dart';

import '../mycustom_widgets/grid_item.dart';
import '../mycustom_widgets/header_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
                  child: GridView.builder(
                    padding: const EdgeInsets.all(12),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (BuildContext context, int index) {
                      return const GridItem();
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
