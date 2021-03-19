import 'package:flutter/material.dart';
import 'package:test_project/costum-list-tile.dart';
import 'package:test_project/target_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xfffaf8ee6),
                    Color(0xfff534cb8),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/image/person.png'),
                    radius: 30,
                  ),
                  Text(
                    'محمد حسین اسدی',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'امتیاز : ۱۲۰۰',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            CostumListTile(
              titleList: 'اطلاعات حساب کاربری',
              iconProducts: Icons.person,
            ),
            CostumListTile(
              titleList: 'اطلاعات حساب بانکی',
              iconProducts: Icons.account_balance,
            ),
            CostumListTile(
              titleList: 'آموزش',
              iconProducts: Icons.school,
            ),
            CostumListTile(
              titleList: 'درباره ما',
              iconProducts: Icons.help,
            ),
            CostumListTile(
              titleList: 'تماس با ما',
              iconProducts: Icons.phone,
            ),
            CostumListTile(
              titleList: 'تنظیمات',
              iconProducts: Icons.settings
            ),
            CostumListTile(
              titleList: 'خروج',
              iconProducts: Icons.exit_to_app,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/dart.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/hand.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/home.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/money.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/asdf.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            label: 'Business',
          ),
        ],
      ),
      body: Builder(
        builder: (context) => SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 35, 0, 0),
                          child: Icon(
                            Icons.headset_mic_outlined,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: IconButton(
                            icon: Icon(Icons.menu),
                            color: Colors.white,
                            onPressed: () {
                              Scaffold.of(context).openEndDrawer();
                            },
                            // size: 28,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'عصر بخیر',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '!',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        Text(
                          'محمد حسین ',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ' تومان',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        Text(
                          '۵۴,۶۸۹,۳۵۴',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ],
                    ),
                    Text(
                      ' موجودی حساب',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                '۱,۵۰۰,۰۰۰',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                              Text(
                                'سرمایه گذاری شده',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '۵,۰۰۰,۰۰۰',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                              Text(
                                'کیف پول',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0, -1.0),
                    end: Alignment(0, 1.0),
                    colors: [
                      Color(0xfffaf8ee6),
                      Color(0xfff534cb8),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                transform: Matrix4.translationValues(0.0, -17.0, 0.0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            child: TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: Color(0xfffeeeeee),
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.close,
                                            color: Colors.red.shade600,
                                          ),
                                        ],
                                      ),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 20),
                                            child: TextField(
                                              decoration: new InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10),
                                                  border:
                                                      new OutlineInputBorder(
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                      const Radius.circular(
                                                          10.0),
                                                    ),
                                                  ),
                                                  filled: true,
                                                  hintStyle: new TextStyle(
                                                      color: Colors.grey[800]),
                                                  hintText: "مبلغ خرج شده ",
                                                  fillColor: Colors.white70),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 20),
                                            child: TextField(
                                              decoration: new InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10),
                                                  border:
                                                      new OutlineInputBorder(
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                      const Radius.circular(
                                                          10.0),
                                                    ),
                                                  ),
                                                  filled: true,
                                                  hintStyle: new TextStyle(
                                                      color: Colors.grey[800]),
                                                  hintText: "انتخاب دسته بندی ",
                                                  fillColor: Colors.white70),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(bottom: 20),
                                            child: TextField(
                                              decoration: new InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10),
                                                  border:
                                                      new OutlineInputBorder(
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                      const Radius.circular(
                                                          10.0),
                                                    ),
                                                  ),
                                                  filled: true,
                                                  hintStyle: new TextStyle(
                                                      color: Colors.grey[800]),
                                                  hintText: "توضیحات ",
                                                  fillColor: Colors.white70),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Text('ثبت'),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(
                                                Color(0xfffaf8ee6),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Text(
                                'ثبت خرج  ',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 18),
                              ),
                            ),
                          ),
                          Container(
                            width: 1,
                            height: 30,
                            color: Colors.grey,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'ثبت در آمد',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 30,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.keyboard_arrow_left,
                                    color: Colors.grey.shade500),
                                InkWell(
                                  onTap: () {
                                    Route route = MaterialPageRoute(
                                      builder: (context) => TargetPage(),
                                    );
                                    Navigator.push(context, route);
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'اهداف پیشنهادی برای شما',
                                        style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Icon(
                                        Icons.money,
                                        color: Color(0xfff8976cc),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.grey,
                            width: double.infinity,
                            height: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.keyboard_arrow_left,
                                    color: Colors.grey.shade500),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'مدیریت درآمد و مخارج',
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Icon(
                                      Icons.stacked_bar_chart,
                                      color: Color(0xfff8976cc),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.grey,
                            width: double.infinity,
                            height: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.keyboard_arrow_left,
                                    color: Colors.grey.shade500),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'یاد آور مخارج ثابت',
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.access_time_outlined,
                                      color: Color(0xfff8976cc),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 30,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'تراکنش های اخیر',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '- ۲۳۵,۰۰۰',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 20),
                                  ),
                                  Text(
                                    '۲۴ / آذر / ۹۸',
                                    style:
                                        TextStyle(color: Colors.grey.shade500),
                                  ),
                                ],
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'رفت و آمد',
                                          style: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          'پرداخت اینترنتی',
                                          style: TextStyle(
                                              color: Colors.grey.shade500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 20),
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.taxi_alert,
                                          color: Colors.yellow,
                                        ),
                                        Text(''),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.grey.shade500,
                            margin: EdgeInsets.symmetric(vertical: 15),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '- ۴۷۵,۰۰۰',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 20),
                                  ),
                                  Text(
                                    '۱۳۹۸/۰۹/۲۴',
                                    style:
                                        TextStyle(color: Colors.grey.shade500),
                                  ),
                                ],
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'خورد و خوراک',
                                          style: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          'پرداخت اینترنتی',
                                          style: TextStyle(
                                              color: Colors.grey.shade500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 20),
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.fastfood,
                                          color: Colors.red,
                                        ),
                                        Text(''),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.grey.shade500,
                            margin: EdgeInsets.symmetric(vertical: 15),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '+ ۲۱۰,۰۰۰',
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 20),
                                  ),
                                  Text(
                                    '۱۳۹۸/۰۹/۲۴',
                                    style:
                                        TextStyle(color: Colors.grey.shade500),
                                  ),
                                ],
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 20),
                                          child: Text(
                                            'دریافت طلب و دنگ',
                                            style: TextStyle(
                                                color: Colors.grey.shade500,
                                                fontSize: 20),
                                          ),
                                        ),
                                        Text(
                                          'پرداخت اینترنتی',
                                          style: TextStyle(
                                              color: Colors.grey.shade500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 20),
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.clean_hands,
                                          color: Colors.green.shade600,
                                        ),
                                        Text(''),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.grey.shade500,
                            margin: EdgeInsets.symmetric(vertical: 15),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '- ۱۰۷,۰۰۰',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 20),
                                  ),
                                  Text(
                                    '۱۳۹۸/۰۹/۲۴',
                                    style:
                                        TextStyle(color: Colors.grey.shade500),
                                  ),
                                ],
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'قبض و شارژ',
                                          style: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          'پرداخت اینترنتی',
                                          style: TextStyle(
                                              color: Colors.grey.shade500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 20),
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.receipt_long,
                                          color: Colors.purple.shade700,
                                        ),
                                        Text(''),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 30,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Text('پتانسیل رشد مالی'),
                          ),
                          AspectRatio(
                            aspectRatio: 16 / 16,
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('assets/image/nemodar.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                                'پتانسیل رشد مالی بر اساس عملکرد فعلی شما'),
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('پتانسیل خود را تغییر دهید'),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Color(0xfffaf8ee6),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
