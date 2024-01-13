import 'package:ecommerce_flutter/model/fashion.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 3,
        selectedIndex: 0,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.history), label: 'History'),
          NavigationDestination(
              icon: Icon(Icons.shopping_basket_outlined), label: 'Wardrobe'),
          NavigationDestination(
              icon: Icon(Icons.explore_outlined), label: 'Explore'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.deepOrange,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                // margin: EdgeInsets.only(top: 10),
                child: Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        height: 130,
                        decoration: BoxDecoration(
                            color: Color(0xFFF89A7D),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)))),
                    Container(
                      margin: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            size: 26,
                            color: Colors.white,
                          ),
                          Container(
                              child: Text(
                            'Search Result',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16),
                          )),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.filter_alt_outlined,
                              size: 26,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 80, right: 20),
                      child: Card(
                        child: Row(
                          children: [
                            Container(
                                height: 90,
                                width: 90,
                                child: Image.asset('images/img_jaket.jpeg')),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text('Jaket Cokat', style: TextStyle(fontWeight: FontWeight.bold),), Text('Category')],
                            ),
                          ],
                        ),
                      ),
                    )
                    /*Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.elliptical(12, 10))),
                    color: Color(0xFFFFFFFF),
                  )*/
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(90),
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(90),
                                bottomLeft: Radius.circular(90))),
                        child: Column()),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(90),
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(90),
                                bottomLeft: Radius.circular(90))),
                        child: Column()),
                    Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(90),
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(90),
                                bottomLeft: Radius.circular(90))),
                        child: Column())
                  ],
                ),
              ),



              Expanded(
                child: SingleChildScrollView(
                  // scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        alignment: Alignment.topLeft,
                        child: Text('Buy Levi\'s T-Shirt',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18)),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          alignment: Alignment.topLeft,
                          child: Text(
                            'We found 2 offline stores and 3 online stores',
                            style: TextStyle(color: Colors.white),
                          )),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Card(
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 8),
                                        child: Text(
                                          'Offline Store',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black, fontSize: 18),
                                        )),
                                    Container(
                                        margin: EdgeInsets.all(5),
                                        width: 70,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFF89A7D),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                                bottomRight: Radius.circular(20),
                                                bottomLeft: Radius.circular(20))),
                                        child: Row(
                                          children: [
                                            Container(
                                                margin: EdgeInsets.only(left: 5),
                                                child: Icon(
                                                  Icons.map,
                                                  size: 20,
                                                  color: Colors.white,
                                                )),
                                            Container(
                                                margin: EdgeInsets.only(left: 5),
                                                child: Text(
                                                  'Map',
                                                  style: TextStyle(color: Colors.white),
                                                ))
                                          ],
                                        )),
                                  ],
                                ),
                                itemProduct(Fashion(
                                    'images/img_ecom_one.png',
                                    'Brown Jacket',
                                    'T-shirt',
                                    '67.000',
                                    'Bandung, Ciamis, Jawa Barat'), Colors.pink),
                                itemProduct(Fashion(
                                    'images/img_ecom_two.png',
                                    'T-Shirt',
                                    'Head',
                                    '90.000',
                                    'Semarang, Sukun, Jawa Tengah'), Colors.deepPurple),
                                Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    child: Text('View More', style: TextStyle(color: Colors.blueAccent),))
                              ],
                            ),
                          ),
                        ),
                      ),

                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Card(
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 8),
                                        child: Text(
                                          'Online Store',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black, fontSize: 18),
                                        )),

                                  ],
                                ),
                                itemProduct(Fashion(
                                    'images/img_ecom_two.png',
                                    'Brown Jacket',
                                    'T-shirt',
                                    'Rp. 67.000',
                                    'Bandung, Ciamis, Jawa Barat'), Colors.pink),
                                itemProduct(Fashion(
                                    'images/img_ecom_three.png',
                                    'Shoes Nw',
                                    'Head',
                                    'Rp. 90.000',
                                    'Semarang, Johar, Jawa Tengah'), Colors.deepPurple),
                                itemProduct(Fashion(
                                    'images/img_ecom_four.png',
                                    'Head Banda Ori',
                                    'Head',
                                    'Rp. 50.000',
                                    'Semarang, Sukun, Jawa Tengah'), Colors.pink),
                                Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    child: Text('View More', style: TextStyle(color: Colors.blueAccent),))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  Row itemProduct(Fashion fashion, Color color) {
    return Row(
      children: [
        Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.only(left: 8),
            child: Image.asset(fashion.photo)),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fashion.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(fashion.olshop),
              ],
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5))),
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
    'Rp${fashion.price}',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            )),
      ],
    );
  }
}
