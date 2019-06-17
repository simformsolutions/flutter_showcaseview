import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ShowCase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShowCase(child: MailPage()),
    );
  }
}

class MailPage extends StatefulWidget {
  @override
  _MailPageState createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  GlobalKey _one = GlobalKey();
  GlobalKey _two = GlobalKey();
  GlobalKey _three = GlobalKey();
  GlobalKey _four = GlobalKey();
  GlobalKey _five = GlobalKey();
  @override
  Widget build(BuildContext context) {
    //Start showcase view after current widget frames are drawn.
    WidgetsBinding.instance.addPostFrameCallback((_) =>
        ShowCase.startShowCase(context, [_one, _two, _three, _four, _five]));

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 8, left: 8, right: 8),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3,
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                TargetWidget(
                                  key: _one,
                                  title: 'Menu',
                                  description: 'Click here to see menu options',
                                  child: Icon(
                                    Icons.menu,
                                    color: Colors.black45,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Search email',
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TargetWidget(
                            key: _two,
                            title: 'Profile',
                            description: 'Click here to go to your Profile',
                            shapeBorder: CircleBorder(),
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/simform.png'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  padding: EdgeInsets.only(left: 16, top: 4),
                  child: Text(
                    'PRIMARY',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: TargetWidget(
                key: _three,
                title: 'Mail',
                description: 'Click here to check mail',
                child: Container(
                  padding: EdgeInsets.only(left: 6, right: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TargetWidget.withWidget(
                              key: _four,
                              cHeight: 80,
                              cWidht: 140,
                              shapeBorder: CircleBorder(),
                              showArrow: false,
                              container: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue[200],
                                    ),
                                    child: Center(
                                      child: Text('S'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Your sender\'s profile ',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue[200],
                                  ),
                                  child: Center(
                                    child: Text('S'),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Slack',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Text(
                                  'Flutter Notification',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Hi, you have new Notification',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            '1 Jun',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.grey,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: MailTile(
                Mail(
                  sender: 'Medium',
                  sub: 'Showcase View',
                  msg: 'Check new showcase View',
                  date: '25 May',
                  isUnread: false,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: MailTile(
                Mail(
                  sender: 'Quora',
                  sub: 'New Question for you',
                  msg: 'Hi, There is new question for you',
                  date: '22 May',
                  isUnread: false,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: MailTile(
                Mail(
                    sender: 'Google',
                    sub: 'Flutter 1.5',
                    msg: 'We have launched Flutter 1.5',
                    date: '20 May',
                    isUnread: true),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: MailTile(
                Mail(
                    sender: 'Simfom',
                    sub: 'Credit card Plugin',
                    msg: 'Check out our credit card plugin',
                    date: '19 May',
                    isUnread: true),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: MailTile(
                Mail(
                  sender: 'Flutter',
                  sub: 'Flutter is Future',
                  msg: 'Flutter laucnhed for Web',
                  date: '18 Jun',
                  isUnread: true,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: TargetWidget(
        key: _five,
        title: 'Compose Mail',
        description: 'Click here to compose mail',
        shapeBorder: CircleBorder(),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            setState(() {});
          },
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class Mail {
  String sender;
  String sub;
  String msg;
  String date;
  bool isUnread;

  Mail({
    this.sender,
    this.sub,
    this.msg,
    this.date,
    this.isUnread,
  });
}

class MailTile extends StatelessWidget {
  final Mail mail;

  MailTile(this.mail);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 6, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue[200],
                  ),
                  child: Center(
                    child: Text(mail.sender[0]),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      mail.sender,
                      style: TextStyle(
                        fontWeight:
                            mail.isUnread ? FontWeight.bold : FontWeight.normal,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      mail.sub,
                      style: TextStyle(
                        fontWeight:
                            mail.isUnread ? FontWeight.bold : FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      mail.msg,
                      style: TextStyle(
                        fontWeight:
                            mail.isUnread ? FontWeight.bold : FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                mail.date,
                style: TextStyle(
                  fontWeight:
                      mail.isUnread ? FontWeight.bold : FontWeight.normal,
                ),
              ),
              Icon(
                Icons.star_border,
                color: Colors.grey,
              ),
            ],
          )
        ],
      ),
    );
  }
}
