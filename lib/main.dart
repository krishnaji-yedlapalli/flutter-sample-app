import 'package:flutter/material.dart';
import 'package:sample/http%20request/api_on_ticketID15.dart';
import 'groups/main_graph_selection.dart';
import 'http request/http_stringResponse.dart';
import 'text form field/1st_window_on_text_field.dart';
import 'http request/api_on_ticketID15.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Wrap(
          direction: Axis.vertical,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text('Jeevini'),
            Text('of Nisarga Health clinic')
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.message))
        ],
      ),
      body:Center(
          child:Column(
             mainAxisAlignment:MainAxisAlignment.spaceEvenly,
             crossAxisAlignment:CrossAxisAlignment.center,
            children:[
              Container(
                color:Colors.blue,
              width:100,
              height:50,
              child: TextButton(child: Text('Graphs',style: TextStyle(color: Colors.white),), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => MainGraphSelection()));
              }),
              ),
              Container(
                width:100,
                height:50,
                color:Colors.blue,
                child: TextButton(child: Text('On Boarding',style: TextStyle(color: Colors.white),), onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => FirstWindow()));
                }),
              ),
              Container(
                width:100,
                height:50,
                color:Colors.blue,
                child: TextButton(child: Text('http request',style: TextStyle(color: Colors.white),), onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => StringResponse()));
                }),
              ),
              Container(
                width:100,
                height:50,
                color:Colors.blue,
                child: TextButton(child: Text('Ticket id=15',style: TextStyle(color: Colors.white),), onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TicketId()));
                }),
              ),

               ],


      )
      )
          );



  }
}

