import 'package:auto_route/auto_route.dart';
import 'package:fluter_example2/themes/buttons/theme_button.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FoodView extends StatefulWidget {
  const FoodView({super.key});

  @override
  State<FoodView> createState() => _FoodViewState();
}

class _FoodViewState extends State<FoodView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                    height: 100,
                    image: NetworkImage(
                        "https://cdn.yemek.com/mnresize/940/940/uploads/2016/01/yaprak-sarma-fast-food.jpg")),
              ),
              Expanded(child: Center(child: Text("Deneme"))),
              ThemeElevatedButton(
                onPressed: () {},
                text: "Sipariş ver",
                icon: Icon(Icons.shopping_cart),
              )
            ],
          ),
        );
      },
    );
  }
}
