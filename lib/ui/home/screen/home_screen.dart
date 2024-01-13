import 'package:ecommerce_flutter/model/fashion.dart';
import 'package:ecommerce_flutter/ui/detail/screen/detail_screen.dart';
import 'package:ecommerce_flutter/ui/result/result_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

  final List<Fashion> fashions = [
    Fashion('images/img_jaket.jpeg', 'Brown Jacket', 'T-shirt','67.000',''),
    Fashion('images/img_sos.jpeg', 'Shoes Nw', 'Shoes','Rp. 67.000',''),
    Fashion('images/img_tshirt_yellow.jpeg', 'Famous T-Shirt ', 'T-shirt','160.000',''),
    Fashion('images/img_crop.jpeg', 'T-Shirt Crop', 'T-shirt','87.000',''),
    Fashion('images/img_hat.jpeg', 'Had Weekend', 'Hat','99.000',''),
    Fashion('images/img_headband.jpeg', 'Head Banda Ori', 'Hat','700.000',''),

  ];

}

class _HomeScreenState extends State<HomeScreen> {
  // int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index){
          if(index == 3){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ResultScreen();
            }));
          }
          /*setState(() {
            selectedPage = index;
          });*/
        },

        height: 80,
        elevation: 0,
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
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            size: 35,
                          ),
                          Container(
                              width: 35,
                              height: 35,
                              child: Image.asset('images/img_logo.png')),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return ResultScreen();
                              }));
                            },
                            child: Icon(
                              Icons.notifications_none,
                              size: 45,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.all(10),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.deepOrange,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none,
                          ),
                          hintStyle:
                              TextStyle(fontSize: 14, color: Colors.grey),
                          hintText: "Search"),
                    ),
                  ),
                ],
              ),
            ),

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


            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                children: widget.fashions.map((fashion) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DetailScreen(fashion: fashion,);
                      }));
                    },
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))
                              ),

                              width: 200,
                              height: 120,
                              child: Image.asset(fashion.photo, fit: BoxFit.cover)),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(fashion.name, style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text(fashion.category),
                                  ],
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('From', style: TextStyle( color: Colors.grey, fontSize: 12)),
                                    Text('Rp${fashion.price}', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 12)),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),




          ],
        ),
      ),
    );
  }
}

fashhionInput ({required Fashion  fashion}){
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
                  Text(fashion.name, style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(fashion.category),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('From', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 12)),
                  Text(fashion.price, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 12)),
                ],
              ),

            ],
          ),
        ),
      ],
    ),
  );
}


