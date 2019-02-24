import 'package:flutter/material.dart';
import 'package:wechat/common/touch_callback.dart';
import 'package:wechat/common/wechat_item.dart';

class Personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0),
            color: Colors.white,
            height: 80.0,
            child: TouchCallBack(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 12.0, right: 15.0),
                      child: Image.asset(
                        'images/tutu.png',
                        width: 70.0,
                        height: 70.0,
                      ),
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '图图',
                          style: TextStyle(
                              color: Color(0xFF353535), fontSize: 16.0),
                        ),
                        Text(
                          '微信号 tutu',
                          style: TextStyle(
                              color: Color(0xFFa9a9a9), fontSize: 14.0),
                        )
                      ],
                    )),
                    Container(
                      margin: EdgeInsets.only(left: 12.0, right: 15.0),
                      child: Image.asset(
                        'images/code.png',
                        width: 24.0,
                        height: 24.0,
                      ),
                    ),
                  ],
                ),
                onPressed: null),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: WechatItem(
              title: '钱包',
              imagePath: 'images/icon_me_money.png',
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                WechatItem(
                  title: '收藏',
                  imagePath: 'images/icon_me_collect.png',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                WechatItem(title: '相册',imagePath: 'images/icon_me_photo.png',),
                Padding(padding: EdgeInsets.only(top: 15.0,right: 15.0),child: Divider(
                  height: 0.5,
                  color: Color(0xFFd9d9d9),
                ),),
                WechatItem(imagePath:'images/icon_me_card.png',title: '卡包',),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                WechatItem(imagePath:'images/icon_me_smile.png',title: '表情',),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: WechatItem(title: '设置',imagePath: 'images/icon_me_setting.png',),
          ),
        ],
      ),
    );
  }
}
