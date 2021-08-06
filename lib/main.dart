import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_new/dataTapview.dart';
import 'package:flutter_new/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF041c43),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe6e6ed),
      appBar: AppBar(
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.arrow_back_ios_new_outlined),
            Expanded(
              child: Text("ข้อมูลส่วนตัว", textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white),
            height: 120,
            child: Row(
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      size: 120,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "กฤษฎา สังขีด",
                      style: TextStyle(
                          color: Color(0xFF041c43),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("เลขบัตรประชาชน  "),
                            Text("เลขที่สัญญา"),
                            Text("เลขที่สอน"),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("111 2222 3333 44"),
                              Text("TRR 5678 91"),
                              Text("1111111"),
                            ]),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.call_sharp),
                      Text("089 101 1213"),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.location_on_outlined),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("25 ถ.สายใต้ แขวง ทุ้งมหาเมฆ "),
                          Text("เขต สาทร กรุงเทพมหานคร 10120"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            height: 40,
            child: Row(
              children: [
                Spacer(),
                Expanded(
                  flex: 10,
                  child: Text(
                    "ปริมาณผลผลิตน้ำอ้อย",
                    style: TextStyle(
                        color: Color(0xFF958a6c),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Color(0xFF828282),
                        textStyle: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      },
                      child: Text("ดูเพิ่มเติม")),
                ),
              ],
            ),
          ),

          //-------------------------------------------

          Container(
            decoration: BoxDecoration(color: Colors.white),
            width: 400,
            child: DefaultTabController(
              length: 5,
              child: Column(
                children: <Widget>[
                  Container(
                    child: TabBar(
                      isScrollable: true,
                      tabs: [
                        Tab(
                          child: Text(
                            "ปี 65/66",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "ปี 64/65",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "ปี 63/64",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "ปี 62/63",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "ปี 61/60",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    // height: MediaQuery.of(context).size.height * 0.4,
                    color: Color(0xFFe6e6ed),
                    child: TabBarView(
                      children: [
                        DataTapView(),
                        DataTapView(),
                        DataTapView(),
                        DataTapView(),
                        DataTapView(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
