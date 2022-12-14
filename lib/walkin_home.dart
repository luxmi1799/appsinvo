import 'package:flutter/material.dart';

List image = [
  "assets/saloon.png",
  "assets/retail.png",
  "assets/mall.png",
  "assets/gym.png",
  "assets/restru.png",
  "assets/grocery.png"
];
List title = ["Saloon", "Retail", "Malls", "GYM", "Restrurant", "Grocery"];

class walkin_home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _walkin_home();
  }
}

class _walkin_home extends State<walkin_home> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Color(0xfff5fbff),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 100,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 5,
            ),
            Container(
              width: 20,
              height: 20,
              child: Image.asset(
                "assets/location.png",
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Text(
                "NY 1122,USA",
                style: TextStyle(
                  fontSize: 8,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
        title: Container(
            height: 40,
            child: Image.asset("assets/logo.png", fit: BoxFit.cover)),
        centerTitle: true,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.search,
                size: 24,
              ),
              Icon(
                Icons.notifications_none,
                size: 24,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Image.asset(
                "assets/offer.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              //height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: image.length,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        (orientation == Orientation.portrait) ? 3 : 4),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: GridTile(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  image[index],
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            title[index],
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ), //just for testing, will fill with image later
                    ),
                  );
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              decoration: BoxDecoration(
                  color: Color(0xffdaeefb),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Expanded(
                        child: Text(
                          "Stay safe",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.close,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 45,
                            height: 45,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/mask.png",
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            width: 100,
                            height: 50,
                            child: Center(
                              child: Text(
                                "Always wear a mask",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black87,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 45,
                            height: 45,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/wash_hand.png",
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            width: 100,
                            height: 50,
                            child: Center(
                              child: Text(
                                "Wash hand",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black87,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 45,
                            height: 45,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/distance.png",
                                  fit: BoxFit.cover,
                                )),
                          ),
                          SizedBox(
                            width: 100,
                            height: 50,
                            child: Center(
                              child: Text(
                                "  Keep distance with other person",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black87,
                                    fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
