import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text("İçecekler"),
        Container(
          height: 200,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CardItem(
                  NetworkImage(
                      "https://www.pngall.com/wp-content/uploads/5/Beverage-PNG-Pic.png"),
                  textOne: "İçecek");
            },
          ),
        ),
        Divider(),
        Text("Yemekler"),
        Container(
          height: 200,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CardItem(
                  NetworkImage(
                      "https://www.pngarts.com/files/8/Enchilada-Dish-PNG-Image-Background.png"),
                  textOne: "Yemek");
            },
          ),
        ),
        Divider(),
        Text("Tatlılar"),
        Container(
          height: 200,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CardItem(
                  NetworkImage(
                      "https://cdn.yemek.com/mncrop/940/625/uploads/2017/11/sultan-sarmasi.jpg"),
                  textOne: "Tatlı");
            },
          ),
        ),
      ],
    );
  }
}
Widget CardItem(ImageProvider image,
    {String textOne = "", String textTwo = ""}) {
  return Container(
    width: 300,
    child: Card(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child:
            Image(width: 150, height: 200, fit: BoxFit.cover, image: image),
          ),
          Expanded(child: Column(children: [Text(textOne), Text(textTwo)]))
        ],
      ),
    ),
  );
}
