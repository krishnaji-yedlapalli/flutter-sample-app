
import 'dart:math';

import 'package:flutter/material.dart';

class HealthParams extends StatefulWidget {
  const HealthParams({Key? key}) : super(key: key);

  @override
  _HealthParamsState createState() => _HealthParamsState();
}

class _HealthParamsState extends State<HealthParams> {
  final list1 =const [
    {
      "label1" : 'Blood Calorie',
      "color1" : Color.fromRGBO(255, 180, 179, 1)
    },
    {
      "label1" : 'Protein',
      "color1" : Color.fromRGBO(224, 216, 255, 1)
    },
    {
      "label1" : 'Fat',
      "color1" : Color.fromRGBO(174, 238, 240, 1)
    },
    {
      "label1" : 'Carbs',
      "color1" : Color.fromRGBO(249, 226, 174, 1)
    },
    {
      "label1" : 'Blanced Index',
      "color1" : Color.fromRGBO(224, 216, 255, 1)
    },
    {
      "label1" : 'Glycemic Index',
      "color1" : Color.fromRGBO(255, 180, 179, 1)
    },
  ];
  final list2 =const [
    {
      "label2" : 'Weight',
      "color2" : Color.fromRGBO(255, 180, 179, 1)
    },
    {
      "label2" : 'BMI',
      "color2" : Color.fromRGBO(255, 180, 179, 1)
    },
    {
      "label2" : 'Blood Sugar',
      "color2" : Color.fromRGBO(255, 180, 179, 1)
    },
  ];
  String dropDownValue='January';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:Text('Graphs'),
      ),
      body:Column(
        crossAxisAlignment:CrossAxisAlignment.center ,
        mainAxisAlignment: MainAxisAlignment.center,
      children:[

        Row(
          children:[
            Expanded(
              child: DropdownButton<String>(
                isExpanded:true,
                borderRadius:BorderRadius.circular(20),
                value:dropDownValue,
                items: <String>['January', 'Feb', 'Mar', 'Apr','May','Jun','Jul','Aug','September','Oct','Nov','Dec'].map((String value) {
                  return DropdownMenuItem<String>(
                    alignment:Alignment.center,
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) { setState(() {
                  dropDownValue = newValue!;
                });},
              ),
            ),
            IconButton(onPressed: (){}, icon:Icon(Icons.check_circle_outline_outlined))

          ],
        ),

          //SizedBox(height:50,),
        Container(
          width:300,
          //height: MediaQuery.of(context).size.height * 0.5,
          child: GridView(
              shrinkWrap:true,
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio:2,
              ),
              children: list1
                  .map((e) => InkWell(
                onTap: null,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: e['color1'] as Color,
                  ),
                  child: Text('${e['label1']}'),
                ),
              ))
                  .toList()),

            ),
        Container(
          alignment:Alignment.center,
          margin:EdgeInsets.fromLTRB(20,10,20,20),
          child:Text('Tests',style:TextStyle(fontSize: 20),),
        ),
        Container(
          width:300,
          height: MediaQuery.of(context).size.height * 0.23,
          child: GridView(
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio:2,
              ),
              children: list2
                  .map((g) => InkWell(
                onTap: null,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  //padding:EdgeInsets.all(19),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: g['color2'] as Color,
                  ),
                  child: Text('${g['label2']}'),
                ),
              ))
                  .toList()),

        ),

            ],//children
          ),

      );

  }

}
