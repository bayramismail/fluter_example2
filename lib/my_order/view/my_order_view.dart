import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyOrderView extends StatefulWidget {
  const MyOrderView({super.key});

  @override
  State<MyOrderView> createState() => _MyOrderViewState();
}

class _MyOrderViewState extends State<MyOrderView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return   Card(
        child: Column(
          children: [
            Text("Data"),
            Divider(),
            Container(
              height: 100,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                        height: 150,
                        width: 130,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://cdn.yemek.com/mnresize/940/940/uploads/2016/01/yaprak-sarma-fast-food.jpg")),
                  ),
                  Expanded(child: Text("Price : 100")),
                  Expanded(child: Text("Count : 2"))
                ],
              ),
            ),
          ],
        ),
      );
    },);
  }
}
