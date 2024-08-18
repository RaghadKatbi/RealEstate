import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:realstate/view/screen/add_realestate.dart';
import 'package:realstate/view/screen/real_estate_recently_added.dart';
import '../mycustom_widgets/my_drawer.dart';
import '../mycustom_widgets/mycustom_appbar.dart';
import 'about_us.dart';
import 'all_realState.dart';
import 'contact_us.dart';
import 'detials_home.dart';
import 'favorite_realestate.dart';
import 'home.dart';

class MyBottomNavigationBar extends StatefulWidget {
  final i;

  const MyBottomNavigationBar(this.i, {super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  late int selectedIndex = widget.i;
  int iconSelect = 0;
  final List<Widget> page = [
    const HomeScreen(),
    const RealEstateRecentlyAdded(),
    const FavoriteRealestate(),
    const AboutUs(),
    const ContactUs(),
  ];
  late Widget newPage = const DetailsHome();

  @override
  void initState() {
    selectedIndex = widget.i;
    iconSelect = selectedIndex;
    if (selectedIndex == 6) {
      iconSelect = 0;
      newPage = const AllRealState();
    } else if (selectedIndex == 7) {
      iconSelect = 0;
      newPage = const DetailsHome();
    } else if (selectedIndex == 8) {
      iconSelect = 1;
      newPage = const AddRealEstate();
    }
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
        key: _sKey,
        appBar: MyCustomAppBar(
          onClick: () => _sKey.currentState?.openEndDrawer(),
        ),
        endDrawer: Container(
          margin: const EdgeInsets.only(bottom: 400, top: 50),
          child: const Drawer(
            shadowColor: Colors.grey,
            elevation: 6,
            surfaceTintColor: Colors.white,
            width: 160,
            child: MyDrawer(),
          ),
        ),
        body: selectedIndex < 5 ? page[selectedIndex] : newPage,
        bottomNavigationBar: CurvedNavigationBar(
          items: const <Widget>[
            Icon(
              Icons.home_filled,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.add_home_work_outlined,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite_sharp,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.info_outline,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.phone,
              size: 30,
              color: Colors.white,
            ),
          ],
          color: const Color(0xff1a395b),
          buttonBackgroundColor: const Color(0xff1a395b),
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 1000),
          index: iconSelect,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
              iconSelect = index;
              print(selectedIndex);
            });
          },
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}
