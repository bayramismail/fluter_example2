import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fluter_example2/lotties/floor/restaurant_lottie.dart';
import 'package:fluter_example2/lotties/table/table_lottie.dart';
import 'package:fluter_example2/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

@RoutePage()
class TableView extends StatefulWidget {
  const TableView({super.key, required this.kat});
  final String kat;

  @override
  State<TableView> createState() => _TableViewState();
}

class _TableViewState extends State<TableView> {
  List<String> dataList = List.generate(10, (index) => 'Masa $index');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
      child: Column(
        children: [
          Text(
            "Masalar",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Expanded(
            child: ResponsiveGridList(
                minItemWidth: 150,
                children: dataList
                    .map((e) => InkWell(
                          onTap: () {


                           context.router.replace(DashboardMainRoute());

                          },
                          child: Card(
                              child: Column(
                            children: [
                              TableLottie(
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
