import 'package:flutter/material.dart';

class LessProfile extends StatelessWidget {
  const LessProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.amber),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final List<String> entries = <String>['1', '2', '3', '4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe6e6ed),
      appBar: AppBar(
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text("ข้อมูลส่วนตัว", textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
      body: Container(
        height: 800,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Color(0xFF827553),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "เมษายน 2564 ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Icon(
                              Icons.calendar_today_outlined,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.all(8),
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          height: 180,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "2565/2564",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF827553),
                                            fontSize: 12),
                                      ),
                                      Divider(
                                        height: 8,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "ผลผลิต : 72 ตัน",
                                        style: TextStyle(
                                            color: Colors.indigo[600],
                                            fontSize: 12),
                                      ),
                                      Divider(
                                        height: 4,
                                      ),
                                      Text(
                                        "สัญญาอ้อย : 72 ตัน",
                                        style: TextStyle(
                                            color: Colors.indigo[600],
                                            fontSize: 12),
                                      ),
                                      Divider(
                                        height: 4,
                                      ),
                                      Text(
                                        "จำนวนแปลง : 50 แปลง",
                                        style: TextStyle(
                                            color: Colors.indigo[600],
                                            fontSize: 12),
                                      ),
                                      Divider(
                                        height: 4,
                                      ),
                                      Text(
                                        "พื้นที่ทั้งหมด : 30 ไร่",
                                        style: TextStyle(
                                            color: Colors.indigo[600],
                                            fontSize: 12),
                                      ),
                                      Divider(
                                        height: 4,
                                      ),
                                      Text(
                                        "พื้นที่เข้าร่วมโครงการ BONSUCRO: 30 ไร่",
                                        style: TextStyle(
                                            color: Colors.indigo[600],
                                            fontSize: 12),
                                      ),
                                      Divider(
                                        height: 4,
                                      ),
                                      Text(
                                        "พื้นที่เข้าร่วมโครงการ GETFARMING : 10 ไร่",
                                        style: TextStyle(
                                            color: Colors.indigo[600],
                                            fontSize: 12),
                                      ),
                                      Divider(
                                        height: 5,
                                      ),
                                      Text(
                                        "ประมาณการณ์ผลผลิตอ้อย : 10 ตัน/ไร่",
                                        style: TextStyle(
                                            color: Colors.indigo[600],
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 70,
                                child: VerticalDivider(),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "ค่า Css เฉลี่ย",
                                      style: TextStyle(
                                          color: Colors.indigo[600],
                                          fontSize: 12),
                                    ),
                                    Text(
                                      "11.13",
                                      style: TextStyle(
                                          color: Colors.indigo[600],
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //fix icon ให้มีเท่านี้
        currentIndex: 4,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'หน้าแรก',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.paid_outlined),
            label: 'วงเงินสินเชือ่',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer_outlined),
            label: 'แชท',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'แจ้งเตือน',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'ข้อมูลส่วนตัว',
          ),
        ],
      ),
    );
  }
}
