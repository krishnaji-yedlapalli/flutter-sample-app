import 'package:flutter/material.dart';

import 'tests_health_parameters.dart';

class MainGraphSelection extends StatelessWidget {
  MainGraphSelection({Key? key}) : super(key: key);

  final list = const [
    {
      "label" : 'Blood pressure',
      "color" : Color.fromRGBO(255, 180, 179, 1)
    },
    {
      "label" : 'Height',
      "color" : Color.fromRGBO(224, 216, 255, 1)
    },
    {
      "label" : 'PPBS',
      "color" : Color.fromRGBO(255, 180, 179, 1)
    },
    {
      "label" : 'Albumin',
      "color" : Color.fromRGBO(255, 180, 179, 1)
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Graphs'),
        ),
        body: Container(
          child: GridView.count(
              crossAxisCount: 2,
              children: list
                  .map((e) => InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (_) => HealthParams()));
                 },
                    child: Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: e['color'] as Color,
                ),
                          child: Text('${e['label']}'),
                        ),
                  ))
                  .toList()),
        ));
  }
}
