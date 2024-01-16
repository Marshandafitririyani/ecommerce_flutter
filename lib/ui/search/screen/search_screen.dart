import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../model/fashion.dart';
import '../../detail/screen/detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<Fashion> fashions = [
    Fashion('images/img_jaket.jpeg', 'Brown Jacket', 'T-shirt', '67.000', ''),
    Fashion('images/img_sos.jpeg', 'Shoes Nw', 'Shoes', 'Rp. 67.000', ''),
    Fashion('images/img_tshirt_yellow.jpeg', 'Famous T-Shirt ', 'T-shirt',
        '160.000', ''),
    Fashion('images/img_crop.jpeg', 'T-Shirt Crop', 'T-shirt', '87.000', ''),
    Fashion('images/img_hat.jpeg', 'Had Weekend', 'Hat', '99.000', ''),
    Fashion('images/img_headband.jpeg', 'Head Banda Ori', 'Hat', '700.000', ''),
    Fashion('images/img_jaket.jpeg', 'Brown Jacket', 'T-shirt', '67.000', ''),
    Fashion('images/img_sos.jpeg', 'Shoes Nw', 'Shoes', 'Rp. 67.000', ''),
    Fashion('images/img_tshirt_yellow.jpeg', 'Famous T-Shirt ', 'T-shirt',
        '160.000', ''),
    Fashion('images/img_crop.jpeg', 'T-Shirt Crop', 'T-shirt', '87.000', ''),
    Fashion('images/img_mirror.jpeg', 'Mirror Ges', 'Hat', '99.000', ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              height: 76,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                    hintText: "Search"),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    children: fashions.map((fashion) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailScreen(
                              fashion: fashion,
                            );
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
                                          topRight: Radius.circular(30))),
                                  child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        topLeft: Radius.circular(15),
                                      ),
                                      child: Image.asset(fashion.photo,
                                          fit: BoxFit.cover))),
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            fashion.name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
                                          ),
                                          Text(fashion.category),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('From',
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 12)),
                                        Text('Rp${fashion.price}',
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
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
