import 'package:flutter/material.dart';
import 'package:influence_me/utils/images.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          WidgetChats(
              imgUrl: Images.alina_finiti,
              textname: 'Alina Finiti',
              textplan: 'So any plans this weekend?',
              colors1: Colors.black,
              textTime: '03:46 PM',
              icons1: Icons.done),
          WidgetChats(
              imgUrl: Images.diana_fields,
              textname: 'Diana Fields',
              textplan: 'Typing ...',
              colors1: Colors.green,
              textTime: '09:41 AM',
              icons1: Icons.done_all),
          WidgetChats(
              imgUrl: Images.ann_garza,
              textname: 'Ann Garza',
              textplan: 'Hello!',
              colors1: Colors.black,
              textTime: 'Wednesday',
              icons1: Icons.done),
          WidgetChats(
              imgUrl: Images.alina_finiti2,
              textname: 'Alina Finiti',
              textplan: 'So any plans this weekend?',
              colors1: Colors.black,
              textTime: '03:46 PM',
              icons1: Icons.done),
        ],
      ),
    );
  }
}

class WidgetChats extends StatelessWidget {
  final imgUrl;
  final String textname;
  final String textplan;
  final String textTime;
  final icons1;
  final colors1;
  const WidgetChats({
    Key? key,
    this.imgUrl,
    required this.textname,
    required this.textplan,
    required this.textTime,
    this.icons1,
    this.colors1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black26))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image(image: AssetImage(imgUrl), width: 47, height: 47),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(textname),
                  Text(textplan, style: TextStyle(color: colors1, fontSize: 10))
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(textTime, style: TextStyle(fontSize: 10)),
              Icon(icons1, color: Colors.green, size: 20)
            ],
          ),
        ],
      ),
    );
  }
}
