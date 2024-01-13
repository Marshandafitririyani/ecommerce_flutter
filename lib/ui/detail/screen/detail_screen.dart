import 'package:ecommerce_flutter/model/fashion.dart';
import 'package:flutter/material.dart';


class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.fashion});

  final Fashion fashion;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
              Container(
                margin: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios, color: Colors.white,)
                    ),
                    Icon(Icons.flashlight_on_outlined, color: Colors.white,)
                  ],
                ),
              ),

              inputDetail(widget.fashion.photo, widget.fashion.name),
            ],
          ),
        ),
      ),
    );
  }
}

inputDetail (String image, String name){
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            child: Image.asset(image, fit: BoxFit.contain)

    ),

      ],
    ),
  );
}

PinchZoom({required double maxScale, required Image child}) {
}
/*
width: double.infinity,
height: double.infinity,
child: PinchZoom(
maxScale: 3.0,
child: Image.network(
widget.product.thumbnail,
fit: BoxFit.contain,
),
)),*/
