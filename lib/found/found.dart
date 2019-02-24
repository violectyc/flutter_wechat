import 'package:flutter/material.dart';
import 'package:wechat/common/wechat_item.dart';

class Found extends StatefulWidget {
  @override
  _FoundState createState() {
    return new _FoundState();
  }
}

class _FoundState extends State<Found> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: WechatItem(
                title: '朋友圈',
                imagePath: 'images/icon_friends.png',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  WechatItem(
                    title: '扫一扫',
                    imagePath: 'images/icon_scan.png',
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(
                      height: 0.5,
                      color: Color(0xFFd9d9d9),
                    ),
                  ),
                  WechatItem(
                    title: '摇一摇',
                    imagePath: 'images/icon_shake.png',
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  WechatItem(
                    imagePath: 'images/icon_look.png',
                    title: '看一看',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(
                      height: 0.5,
                      color: Color(0xFFd9d9d9),
                    ),
                  ),
                  WechatItem(
                    imagePath: 'images/icon_search.png',
                    title: '搜一搜',
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  WechatItem(
                    imagePath: 'images/icon_near.png',
                    title: '附近的人',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(
                      height: 0.5,
                      color: Color(0xFFd9d9d9),
                    ),
                  ),
                  WechatItem(
                    imagePath: 'images/icon_bottle.png',
                    title: '飘流瓶',
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  WechatItem(
                    imagePath: 'images/icon_shop.png',
                    title: '购物',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(
                      height: 0.5,
                      color: Color(0xFFd9d9d9),
                    ),
                  ),
                  WechatItem(
                    imagePath: 'images/icon_game.png',
                    title: '游戏',
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              color: Colors.white,
              child: WechatItem(
                imagePath: 'images/icon_link.png',
                title: '小程序',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
