import 'package:flutter/material.dart';

void main() =>
    runApp(new MaterialApp(title: 'Material', home: new MaterialWidget()));

class MaterialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Material Widget Title'),
        actions: <Widget>[
          new IconButton(
              onPressed: null, icon: new Icon(Icons.search), tooltip: 'Search')
        ],
        leading: new IconButton(
            onPressed: null,
            tooltip: 'Navigator Menu',
            icon: new Icon(Icons.menu)),
      ),
      body: new Center(
        child: new MyButton(),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        tooltip: 'Add',
        child: new Icon(Icons.add),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print('点击');
      },
      child: new Container(
        height: 36.0,
        padding: new EdgeInsets.all(5.0),
        margin: new EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(5.0),
            color: Colors.lightGreen[500]),
        child: new Center(
          child: new Text("内容"),
        ),
      ),
    );
  }
}
