import 'package:flutter/material.dart';

class FavoriteRealestate extends StatefulWidget {
  const FavoriteRealestate({super.key});

  @override
  State<FavoriteRealestate> createState() => _FavoriteRealestateState();
}

class _FavoriteRealestateState extends State<FavoriteRealestate> {
  late bool isFavorite = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 110.0, top: 20, bottom: 20),
            child: Text(
              textAlign: TextAlign.right,
              "العقارات المفضلة لديك",
              style: const TextStyle(
                  color: Color(0xff365271), fontSize: 20, fontFamily: 'cairo'),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => Card(
                color: const Color(0xf0d0dae6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 50,
                margin: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15)),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "asset/images/img.png",
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            bottom: 20,
                            left: 10,
                            child: Container(
                              width: 80,
                              color: const Color(0xff365271),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  selectionColor: Colors.blue.shade50,
                                  "المزيد من التفاصيل ",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'cairo'),
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  if (isFavorite)
                                    isFavorite = false;
                                  else
                                    isFavorite = true;
                                });
                              },
                              icon: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: const Color(0xff1a395b),
                                size: 35,
                              )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "فيلا",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                  fontFamily: 'cairo',
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text("ايجار",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'cairo',
                                  )),
                              SizedBox(
                                height: 3,
                              ),
                              Text("الحمدانية",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'cairo',
                                  )),
                              SizedBox(
                                height: 3,
                              ),
                              Text("12345",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue,
                                    fontFamily: 'cairo',
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.black,
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.system_update_alt_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "12 m",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'cairo',
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.roller_shades_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "2 Rooms",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'cairo',
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.bathtub_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "1 Bathrooms",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'cairo',
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ))
        ],
      ),
    );
  }
}
