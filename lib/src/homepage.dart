import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'fish.dart';
import 'home.dart';
import 'expert.dart';

class HomePage extends StatefulWidget {
  @override
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

Color PrimaryColor = Color(0xff109618);

@override
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(95),
          child: AppBar(
            backgroundColor: Colors.indigo,
            title: Center(child: Text(
                'Smart 양식업', style: TextStyle(color: Colors.black))),
            bottom: TabBar(
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
                      'HOME',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      '어종',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      '전문가 문의',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Home(),
            Fish(),
            Expert(),

          ],
        ),
      ),
    );
  }
}