import 'package:ecommerce_flutter/ui/home/screen/home_screen.dart';
import 'package:flutter/material.dart';

class PrefixScreen extends StatefulWidget {
  const PrefixScreen({super.key});

  @override
  State<PrefixScreen> createState() => _PrefixScreenState();
}

class _PrefixScreenState extends State<PrefixScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.deepOrange,
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.all(10),
                        child: Image.asset('images/img_logo.png'),
                      ),
                      Text(
                        'Shopp Online',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.only(right: 57, top: 10),
                          child: Stack(
                            children: [
                              Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset('images/img_ecom_one.png'))
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 40, top: 60),
                          child: Stack(
                            children: [
                              Container(
                                  width: 130,
                                  height: 130,
                                  child: Image.asset('images/img_ecom_two.png'))
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(top: 130),
                          padding: EdgeInsets.only(right: 60),
                          child: Stack(
                            children: [
                              Container(
                                  width: 120,
                                  height: 120,
                                  child:
                                      Image.asset('images/img_ecom_three.png'))
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 100),
                          child: Stack(
                            children: [
                              Container(
                                  width: 100,
                                  height: 100,
                                  child:
                                      Image.asset('images/img_ecom_four.png'))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        height: 370,
                        decoration: BoxDecoration(
                            color: Color(0xFFF89A7D),
                            gradient: RadialGradient(

                              stops: [
                                0.1,
                                0.4,
                                0.6,
                                0.9,
                              ],
                              colors: [
                                Color(0xFFF89A7D),
                                Color(0xFFF89A7D),
                                Color(0xFFF89A7D),
                                Color(0xFFF89A7D),
                              ],
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(80),
                                topRight: Radius.circular(80)))),
                    Container(
                      margin: EdgeInsets.all(23),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Let\'s shopping with our in the Shopp Online',
                            style: TextStyle(fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Finding your desired item in our online shop is certainly satisfying',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        width: 50,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            color: Colors.deepOrange,
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
                                )
                                ,


                                Container(
                                  padding: EdgeInsets.only(left: 13, right: 8, top: 8, bottom: 8 ),
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.all(Radius.circular(80))
                                  ),
                                  child: Row(
                                    children: [
                                      Text('Next', style: TextStyle(color: Colors.white),),
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context){
                                            return HomeScreen();
                                          }));
                                        },
                                        child: Container(
                                            margin: EdgeInsets.only(left: 16),
                                            padding: EdgeInsets.all(6),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(50),

                                            ),
                                            child: Icon(Icons.arrow_forward_ios_outlined, color: Colors.deepOrange,)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
