import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../model/fashion.dart';
import '../../detail/screen/detail_screen.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();


}

class _HistoryScreenState extends State<HistoryScreen> {
  final List<Fashion> fashions = [
    Fashion('images/img_jaket.jpeg', 'Brown Jacket', 'T-shirt', '67.000', ''),
    Fashion('images/img_sos.jpeg', 'Shoes Nw', 'Shoes', '67.000', ''),
    Fashion('images/img_tshirt_yellow.jpeg', 'Famous T-Shirt ', 'T-shirt',
        '160.000', ''),
    Fashion('images/img_crop.jpeg', 'T-Shirt Crop', 'T-shirt', '87.000', ''),
    Fashion('images/img_hat.jpeg', 'Had Weekend', 'Hat', '99.000', ''),
    Fashion('images/img_hat.jpeg', 'mirror', 'Hat', '99.000', ''),
    Fashion('images/img_hat.jpeg', 'book', 'Hat', '99.000', ''),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              // Text('History Screen'),
              fashionDetail(fashions)
            ],
          ),
        ),
      ),
    );
  }
}

fashionDetail(List<Fashion> fashions) {
  return Column(
    /*children: [
      Text(fashion[0].name),
      Text(fashion[1].name),
      Text(fashion[2].name),
      Text(fashion[3].name),
      Text(fashion[4].name),
    ],*/
    children: fashions.map((fashion) =>
        Container(
          margin: EdgeInsets.all(16),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Row(
                  children: [
                    Container(
                        height: 60,
                        width: 60,
                        child: Image.asset(fashion.photo)
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(fashion.name)),
                  ],
                ),
                Text('Rp${fashion.price}'),
              ]
          ),
        ),
    ).toList());

}
