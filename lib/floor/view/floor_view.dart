import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluter_example2/lotties/floor/restaurant_lottie.dart';
import 'package:fluter_example2/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

@RoutePage()
class FloorView extends StatefulWidget {
  const FloorView({super.key});

  @override
  State<FloorView> createState() => _FloorViewState();
}

class _FloorViewState extends State<FloorView> {
  List<String> dataList = List.generate(10, (index) => 'Kat $index');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
      child: Column(
        children: [
          Text(
            "Katlar",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Expanded(
            child: ResponsiveGridList(
                minItemWidth: 150,
                children: dataList
                    .map((e) => InkWell(
                          onTap: () {
                            AutoRouter.of(context).navigate(TableRoute(kat: e));
                          },
                          child: Card(
                              child: Column(
                            children: [
                              RestaurantLottie(
                                width: 100,
                                height: 100,
                              ),
                              Text(e),
                            ],
                          )),
                        ))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
