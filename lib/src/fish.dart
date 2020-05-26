import 'package:flutter/material.dart';

class Fish extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FishState();
  }
}

Color PrimaryColor = Color(0xff109618);

@override
class _FishState extends State<Fish> {
  @override
  Widget build(BuildContext context) {
    var divheight = MediaQuery
        .of(context)
        .size
        .height;

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65),
          child: AppBar(
            backgroundColor: Colors.indigo,
            bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 6.0,
              onTap: (index) {
                setState(() {
                  switch (index) {
                    case 0:
                      PrimaryColor = Color(0xffff5722);
                      break;
                    case 1:
                      PrimaryColor = Color(0xff3f51b5);
                      break;
                    case 2:
                      PrimaryColor = Color(0xffe91e63);
                      break;
                    default:
                  }
                });
              },
              tabs: <Widget>[
                Tab(
                  child: Container(
                    child: Text(
                      '새우',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      '숭어',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      '전어',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      '장어',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      '다금바리',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}