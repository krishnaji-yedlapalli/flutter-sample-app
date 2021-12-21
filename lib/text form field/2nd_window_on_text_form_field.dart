
import 'package:flutter/material.dart';

class SecondWindow extends StatefulWidget {
  SecondWindow({Key? key}) : super(key: key);

  String dropDownValue = 'Normal';
  String dropDownValue1 = 'Kannada';
  String dropDownValue2 = 'Dharwad';
  String dropDownValue3 = 'Karnataka';

  @override
  _SecondWindowState createState() => _SecondWindowState();
}

class _SecondWindowState extends State<SecondWindow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('On Boarding'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'Contact Details',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'This information will be utilized to make the recommendations accurate for you ',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Flexible(
            flex: 6,
            fit: FlexFit.tight,
            child: Container(
              margin: EdgeInsets.fromLTRB(15, 18, 15.09, 20),
              color: Color.fromRGBO(106, 106, 106, 0.06),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
                    child: Text(
                      'State:',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  State(),
                  SizedBox(
                    height: 15, 
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
                    child: Text(
                      'District:',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  District(),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
                    child: Text(
                      'Language:',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Language(),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
                    child: Text(
                      'Health Status:',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Health_Status(),
                  SizedBox(
                    height: 15,
                  ),
                  Flexible(
                    fit:FlexFit.tight,
                    flex:1,
                    child: Container(
                      margin:
                          EdgeInsets.only(left: 50, top: 0, right: 0, bottom: 0),
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Do you have diabetes?',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontStyle: FontStyle.normal),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.check)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                    ]),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: SizedBox(
              height: 80,
            ),
          ),
          SizedBox(
                width: 110,
                height: 40,
                child: FloatingActionButton(
                  onPressed: (){},
                  backgroundColor: Color.fromRGBO(1, 127, 251, 1),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Text('submit'),
                )),

        ],
      ),
    );
  }

  Widget State() {
    var dropDownValue3;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: DropdownButton<String>(
        hint: Text('choose state'),
        isExpanded: true,
        //borderRadius: BorderRadius.circular(20),
        value: dropDownValue3,
        items:
            <String>['Karnataka', 'Kerala', 'Uttarakhand'].map((String value) {
          return DropdownMenuItem<String>(
            alignment: Alignment.center,
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            dropDownValue3 = newValue!;
          });
        },
      ),
    );
  }

  Widget District() {
    var dropDownValue2;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: DropdownButton<String>(
        hint: Text('choose city'),
        isExpanded: true,
        borderRadius: BorderRadius.circular(20),
        value: dropDownValue2,
        items: <String>['Dharwad', 'Gadag', 'Haveri'].map((String value) {
          return DropdownMenuItem<String>(
            alignment: Alignment.center,
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            dropDownValue2 = newValue!;
          });
        },
      ),
    );
  }

  Widget Language() {
    var dropDownValue1;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: DropdownButton<String>(
        hint: Text('choose language'),
        isExpanded: true,
        borderRadius: BorderRadius.circular(20),
        value: dropDownValue1,
        items: <String>['Kannada', 'Hindi', 'English'].map((String value) {
          return DropdownMenuItem<String>(
            alignment: Alignment.center,
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            dropDownValue1 = newValue!;
          });
        },
      ),
    );
  }

  Widget Health_Status() {
    var dropDownValue;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: DropdownButton<String>(
        hint: Text(
          'Normal',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        isExpanded: true,
        borderRadius: BorderRadius.circular(20),
        value: dropDownValue,
        items: <String>['Normal', 'Moderate', 'Severe'].map((String value) {
          return DropdownMenuItem<String>(
            alignment: Alignment.center,
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            dropDownValue = newValue!;
          });
        },
      ),
    );
  }
}
