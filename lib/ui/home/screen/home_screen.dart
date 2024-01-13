import 'package:ecommerce_flutter/model/fashion.dart';
import 'package:ecommerce_flutter/ui/detail/screen/detail_screen.dart';
import 'package:ecommerce_flutter/ui/result/screen/result_screen.dart';
import 'package:ecommerce_flutter/ui/search/screen/search_screen.dart';
import 'package:flutter/material.dart';

import '../../history/screen/history_screen.dart';
import '../../profile/screen/profile_screen.dart';
import '../../wardrobe/screen/wardrobe_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int selectedPage = 0;

  int currentPageIndex = 0;

  void onPageSelected(int index) {
    //setState untuk merefres
    setState(() {
      currentPageIndex = index;
    });
  }

  List<Widget> pages = [
    SearchScreen(),
    HistoryScreen(),
    WardrobeScreen(),
    ResultScreen(),
    ProfileScreen()
  ];

  List<Widget> titles = [
    Container(
      width: 36,
      height: 36,
      child: Image.asset('images/img_logo.png'),
    ),
    Text('History',
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
    Text('Wardrobe',
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
    Text('Search Result',
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
    Text('Profile',
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
  ];

  List<Widget> actions = [
    IconButton(
      icon: Icon(
        Icons.notifications_none,
        color: Colors.white,
      ),
      onPressed: () {
        // do something
      },
    ),
    Container(),
    Container(),
    IconButton(
      icon: Icon(
        Icons.filter_alt_outlined,
        color: Colors.white,
      ),
      onPressed: () {
        // do something
      },
    ),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.green,
          title: titles[currentPageIndex],
          actions: [
            ...[actions[currentPageIndex]]
          ]),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.green,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                        width: 76,
                        height: 76,
                        child: Image.asset('images/img_logo.png')),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Text('Marshanda Fitri Riyani ', style: TextStyle(color: Colors.white),)),
                  ],
                ),
              ),





              Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(Icons.chat_outlined, size: 24, color: Colors.green,),
                    Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text('Chat', style: TextStyle(fontSize: 16),))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),

              Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(Icons.save_alt, size: 24,color: Colors.green),
                    Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text('Favorite', style: TextStyle(fontSize: 16),))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),

              Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(Icons.shopping_cart, size: 24,color: Colors.green),
                    Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text('Cheackout', style: TextStyle(fontSize: 16),))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),

              Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(Icons.notifications, size: 24,color: Colors.green),
                    Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text('Notification', style: TextStyle(fontSize: 16),))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),

              Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(Icons.payment_outlined, size: 24,color: Colors.green),
                    Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text('Paymoney', style: TextStyle(fontSize: 16),))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),

              Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(Icons.align_horizontal_left, size: 24,color: Colors.green),
                    Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Text('All', style: TextStyle(fontSize: 16),))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),

      //appbar
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        ),
        child: BottomNavigationBar(
          onTap: onPageSelected,
          currentIndex: currentPageIndex,
          backgroundColor: Colors.green,
          selectedFontSize: 11.0,
          unselectedFontSize: 11.0,
          unselectedItemColor: Colors.white70,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.manage_search_outlined), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.history_outlined), label: 'History'),
            BottomNavigationBarItem(
                icon: Icon(Icons.headphones_battery_outlined),
                label: 'Wardrobe'),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined), label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Profile'),
          ],
        ),
      ),

      /*    appBar: AppBar(
        actions: [
          Column()
        ],
      ),*/

      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Expanded(child: pages[currentPageIndex])

            /*   GridView.count(
              crossAxisCount: 3,
              children: widget.fashions.map((fashion){
                return GestureDetector(
                  onTap: (){

                  },
                  child: Card(

                  ),
                )
              },
            ),
*/
          ],
        ),
      ),
    );
  }
}

fashhionInput({required Fashion fashion}) {
  return Card(
    child: Column(
      children: [
        Image.asset(fashion.photo),
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fashion.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(fashion.category),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('From',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 12)),
                  Text(fashion.price,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
