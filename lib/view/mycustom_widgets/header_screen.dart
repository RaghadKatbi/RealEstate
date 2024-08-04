import 'package:flutter/material.dart';
class HeaderScreen extends StatefulWidget {
  const HeaderScreen({super.key});

  @override
  State<HeaderScreen> createState() => _HeaderScreenState();
}

class _HeaderScreenState extends State<HeaderScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  SizedBox(
      width: double.infinity,
      height: size.height*0.3,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45)),
            child: SizedBox(
              width: double.infinity,
              height: size.height*0.25,
              child: Opacity(
                opacity: 0.5,
                child: Image.asset(
                  "asset/images/img_2.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
           Positioned(
            right: size.width*0.05,
            top: size.height*0.07,
            child: const Column(
              children: [
                Text(
                  "المحترف لتطوير وتسويق العقارات",
                  style: TextStyle(
                      color: Color(0xff365271),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'cairo',
                      fontSize: 20),
                ),
                SizedBox(height: 4,),
                Text(
                  "بوابتك إلى العقارات الأكثر ملائمة",
                  style: TextStyle(
                      color: Color(0xff657c90),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'cairo',
                      fontSize: 17),
                )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(size.width*0.07, size.height*0.22, size.width*0.07,0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                controller: _searchController,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: 'ابحث هنا',
                  hintStyle: TextStyle(
                      color: Colors.grey[700], fontFamily: 'changes',),
                  suffixIcon: Icon(Icons.search, color: Colors.grey[700]),
                  prefixIcon: _searchController.text.isNotEmpty ? IconButton(
                    icon: Icon(Icons.clear, color: Colors.grey[700]),
                    onPressed: () {
                      setState(() {
                        _searchController.clear();
                      });
                    },
                  ):null,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 12),
                ),
                onChanged: (text) {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
