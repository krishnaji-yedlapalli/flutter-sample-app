import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class StringResponse extends StatefulWidget {
  const StringResponse({Key? key}) : super(key: key);

  @override
  _stringResponseState createState() => _stringResponseState();
}

class _stringResponseState extends State<StringResponse> {
  Map? mapResponse;
  List? listofFacts;

  Future fetchData() async {
    http.Response response;
    //response=await http.get("https://thegrowingdeveloper.org/apiview?id=1");
    response = await http
        .get(Uri.parse("https://thegrowingdeveloper.org/apiview?id=2"));
    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);
        listofFacts = mapResponse!['facts'];
      });
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('http request'),
      ),
      body: mapResponse == null
          ? Container()
          : SingleChildScrollView(
            child: Column(
                children: [
                  Text(
                    mapResponse!['category'].toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                          child: Column(children: <Widget>[
                        Image.network(listofFacts![index]['image_url']),
                            Text(
                              listofFacts![index]['title'].toString(),
                              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                            ),
                            Text(
                              listofFacts![index]['description'].toString(),
                              style: TextStyle(fontSize: 18 ),
                            ),
                      ],
                          ),
                      );
                    },
                    itemCount: listofFacts == null ? 0 : listofFacts!.length,
                  ),

                ],
              ),
          ),
    );
  }
}
