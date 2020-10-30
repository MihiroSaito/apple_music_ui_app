import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFBFBFB),
        brightness: Brightness.light,
        actions: <Widget>[
          Center(
            child: GestureDetector(
              onTap: (){
                print("test");
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  "編集",
                  style: TextStyle(
                    color: Color(0xFFE82C3E),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                    child: Text(
                        "ライブラリ",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )
                    ),
                  ),
                  Container(
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: ListView(
                        physics: NeverScrollableScrollPhysics(),
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey)
                                )
                            ),
                            child: ListTile(
                              leading: Icon(
                                Icons.queue_music,
                                size: 32,
                                color: Color(0xFFE82C3E),
                              ),
                              title: Text(
                                "プレイリスト",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey)
                                )
                            ),
                            child: ListTile(
                              leading: Icon(
                                Icons.mic,
                                size: 32,
                                color: Color(0xFFE82C3E),

                              ),
                              title: Text(
                                "アーティスト",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey)
                                )
                            ),
                            child: ListTile(
                              leading: Icon(
                                Icons.library_music,
                                size: 32,
                                color: Color(0xFFE82C3E),
                              ),
                              title: Text(
                                "アルバム",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey)
                                )
                            ),
                            child: ListTile(
                              leading: Icon(
                                Icons.music_note,
                                size: 32,
                                color: Color(0xFFE82C3E),
                              ),
                              title: Text(
                                "曲",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey)
                                )
                            ),
                            child: ListTile(
                              leading: Icon(
                                Icons.arrow_circle_down,
                                size: 32,
                                color: Color(0xFFE82C3E),
                              ),
                              title: Text(
                                "ダウンロード済み",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 17,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    child: Text(
                      "最近追加した項目",
                      style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                      height: 6150,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 25.0),
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 7,
                            crossAxisSpacing: 25,
                            childAspectRatio: 0.75,
                          ),
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage("https://ogre.natalie.mu/media/news/music/2020/0916/LiSA_jkt202010_single_anime.jpg?imwidth=750"),
                                    ),
                                    border: Border.all(color: Colors.grey, width: 0.3),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 5,),
                                    Text("炎"),
                                    Text(
                                      "煉獄杏寿郎",
                                      style: TextStyle(
                                          color: Colors.grey
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      )
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            height: 80,
            width: MediaQuery.of(context).size.width,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(color: Colors.white.withOpacity(0.75)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.3),
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: NetworkImage("https://ogre.natalie.mu/media/news/music/2020/0916/LiSA_jkt202010_single_anime.jpg?imwidth=750"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 175,
                      child: Text(
                        "炎",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.pause, size: 40,),
                    SizedBox(width: 10,),
                    Icon(Icons.fast_forward, size: 40,),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: "ライブラリ",
            icon: Icon(Icons.library_music),
          ),
          BottomNavigationBarItem(
            label: "今すぐ聴く",
            icon: Icon(Icons.play_circle_fill),
          ),
          BottomNavigationBarItem(
            label: "見つける",
            icon: Icon(Icons.view_list_sharp),
          ),
          BottomNavigationBarItem(
            label: "ラジオ",
            icon: Icon(Icons.radio),
          ),
          BottomNavigationBarItem(
            label: "検索",
            icon: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
