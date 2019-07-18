import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _addList() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(fontSize: 20.0),),
      ),
      body: ListView.builder(
        // itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('ListTile $index.'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HelloPage(index)));
            }
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addList,
        child: Icon(Icons.add),
      ),
    );
  }
}

class HelloPage extends StatelessWidget {
  HelloPage(this.index);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Hello $index', style: TextStyle(fontSize: 50.0),),
      ),
    );
  }
}