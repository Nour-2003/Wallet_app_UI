import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // This widget
  int _currentIndex = 0;

  final tabs = [
    MyHomePage(),
    Center(
        child: Text(
          "Settings",
          style: TextStyle(fontSize: 20),
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.pink,
          onPressed: () {},
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Icon(
                Icons.attach_money,
                color: Colors.pink,
                size: 33,
              )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[350],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 32,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 32,
              ),
              label: 'Settings'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: tabs[_currentIndex],
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "My",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Cards",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    width: ((MediaQuery
                        .of(context)
                        .size
                        .width) / 2),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[500],
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            size: 32,
                          )))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepPurple,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Balance",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 1.8,
                          ),
                          Container(
                              height: 60,
                              width: 60,
                              child: ClipRRect(
                                  child: Image(
                                      image: AssetImage(
                                          'images/credit-card.png')))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "\$50235.5",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        children: [
                          Text(
                            "12345678",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 2.2,
                          ),
                          Text(
                            "11/2/2022",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 55,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[800]),
                  child: Text(""),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[600]),
                  child: Text(""),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[600]),
                  child: Text(""),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: IconButton(
                              padding: new EdgeInsets.all(15.0),
                              onPressed: () {},
                              icon: Image.asset("images/expense.png"))),
                      SizedBox(height: 5,),
                      Text("Send", style: TextStyle(fontSize: 25,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Column(
                    children: [
                      Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: IconButton(
                              padding: new EdgeInsets.all(16.0),
                              onPressed: () {},
                              icon: Image.asset("images/credit-card.png"))),
                      SizedBox(height: 5,),
                      Text("Pay", style: TextStyle(fontSize: 25,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Column(
                    children: [
                      Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: IconButton(
                              padding: new EdgeInsets.all(17.0),
                              onPressed: () {},
                              icon: Image.asset("images/bill.png"))),
                      SizedBox(height: 5,),
                      Text("Bills", style: TextStyle(fontSize: 25,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                          padding: new EdgeInsets.all(17.0),
                          onPressed: () {},
                          icon: Image.asset("images/analysis.png"))),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Statistics", style: TextStyle(color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Payments and income", style: TextStyle(
                          fontSize: 19, color: Colors.grey[700]),),
                    ],
                  ),
                  SizedBox(width: 25,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_sharp,size: 30,))
                ],
              ),
            ), SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                          padding: new EdgeInsets.all(17.0),
                          onPressed: () {},
                          icon: Image.asset("images/transaction.png"))),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Transactions", style: TextStyle(color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Transactions History", style: TextStyle(
                          fontSize: 19, color: Colors.grey[700]),),
                    ],
                  ),
                  SizedBox(width: 25,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_sharp,size: 30,))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
