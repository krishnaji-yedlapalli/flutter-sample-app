import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '2nd_window_on_text_form_field.dart';

class FirstWindow extends StatefulWidget {
  FirstWindow({Key? key}) : super(key: key);

  @override
  State<FirstWindow> createState() => _FirstWindowState();
}

class _FirstWindowState extends State<FirstWindow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('On Boarding'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(1),
            margin: EdgeInsets.fromLTRB(15, 18, 15.09, 20),
            color: Color.fromRGBO(243, 249, 255, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 26, top: 0, right: 0, bottom: 0),
                  child: Text(
                    'Enter Doctor/Center Code:',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                doctorCode(),
                Container(
                  padding:
                      EdgeInsets.only(left: 26, top: 0, right: 0, bottom: 0),
                  child: Text(
                    'Introducer Number:',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                IntroducerNum(),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                'Personal Details',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontStyle: FontStyle.normal),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'This information will be utilized to make the recommendation accurate for you ',
                style: TextStyle(color: Colors.black, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 18, 15.09, 20),
            color: Color.fromRGBO(106, 106, 106, 0.06),
            padding: EdgeInsets.all(2),
            child: Flexible(
              flex: 6,
              fit:FlexFit.tight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 26, top: 0, right: 0, bottom: 0),
                    child: Text(
                      'Full Name:',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  FullName(),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 26, top: 0, right: 0, bottom: 0),
                    child: Text(
                      'Date of Birth:',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  DoB(),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 26, top: 0, right: 0, bottom: 0),
                    child: Text(
                      'Weight:',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Weight(),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 26, top: 0, right: 0, bottom: 0),
                    child: Text(
                      'Height:',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Height(),
                  Container(
                    padding:
                        EdgeInsets.only(left: 26, top: 0, right: 0, bottom: 0),
                    child: Text(
                      'Gender:',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.male)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.female)),
                  ]),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              child: SizedBox(
                  width: 110,
                  height: 30,
                  child: FloatingActionButton(
                    onPressed: () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => SecondWindow())),
                    backgroundColor: Color.fromRGBO(1, 127, 251, 1),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    child: Text('Next'),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget doctorCode() {
    return Container(
      // margin:EdgeInsets.fromLTRB(21.2,0,20.17,24.10),
      padding: EdgeInsets.symmetric(vertical: 0.5, horizontal: 15),
      child: TextFormField(
        decoration: InputDecoration(
          //errorText: 'Error message',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

Widget IntroducerNum() {
  return Container(
    // margin:EdgeInsets.fromLTRB(21.2,0,20.17,26.78),
    padding: EdgeInsets.symmetric(vertical: 0.5, horizontal: 15),
    child: TextFormField(
      decoration: InputDecoration(
        //errorText: 'Error message',
        border: OutlineInputBorder(),
      ),
    ),
  );
}

Widget FullName() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
    child: TextFormField(
      decoration: InputDecoration(
        //errorText: 'Error message',
        border: OutlineInputBorder(),
      ),
    ),
  );
}

Widget DoB() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
    child: TextFormField(
      decoration: InputDecoration(
        //errorText: 'Error message',
        hintText: 'DD/MM/YYYY',
        border: OutlineInputBorder(),
      ),
    ),
  );
}

Widget Weight() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
    child: TextFormField(
      decoration: InputDecoration(
        //labelText: 'Introducer Number',
        //errorText: 'Error message',
        border: OutlineInputBorder(),
      ),
    ),
  );
}

Widget Height() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
    child: TextFormField(
      decoration: InputDecoration(
        //errorText: 'Error message',
        border: OutlineInputBorder(),
      ),
    ),
  );
}
