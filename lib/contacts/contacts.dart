import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './contact_sider_list.dart';
import './contact_item.dart';
import './contact_header.dart';
import './contact_vo.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() {
    return new _ContactsState();
  }
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ContactSiderList(
        items: contactData,
        headerBuilder: (BuildContext context, int index) {
          return Container(
            child: ContactHeader(),
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: ContactItem(item: contactData[index],),
          );
        },
        sectionBuilder: (BuildContext context,int index){
          return Container(
            height: 32.0,
            padding: EdgeInsets.only(left: 14.0),
            color: Colors.grey[300],
            alignment: Alignment.centerLeft,
            child: Text(
              contactData[index].seationKey,
              style: TextStyle(color: Color(0xff909090),fontSize: 14.0),
            ),
          );
        },
      ),
    );
  }
}
