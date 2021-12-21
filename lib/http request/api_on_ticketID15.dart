import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'dart:convert';
class TicketId extends StatefulWidget {
  const TicketId({Key? key}) : super(key: key);

  @override
  _TicketIdState createState() => _TicketIdState();
}

class _TicketIdState extends State<TicketId> {
  Map? mapResponse;
  List? listofFacts;
  List? listofHistory;
  Future fetchData1()async
  {
    http.Response response;
    response=await http.get(Uri.parse('https://api.jeevini.com/api/listTicket?ticket_id=15'));

    if(response.statusCode==200)
      {
        setState(() {
          mapResponse= json.decode(response.body);
          listofFacts=mapResponse!['data'];
          listofHistory=mapResponse!['data']['ticket_history'];
        });
      }
  }
  @override
  void initState() {
    fetchData1();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Ticket id=15',textAlign: TextAlign.center,),
      ),
      body:mapResponse == null ? Container() :SingleChildScrollView(
        child: Column(
          children: [
            Text(listofFacts![0]),

            ListView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
              return Container(
                child:Column(
                  children:[
                    Text(listofHistory![index]['comment'].toString()
                  ),
                    Text(listofHistory![index]['assignee'].toString()
                    ),

                ],
                ),

              );
            },
            itemCount: listofHistory==null?0:listofHistory!.length,
            )

          ],
        ),
      ),
    );
  }
}
