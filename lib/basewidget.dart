import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: 'Basic',
  home: new MyScaffold(),
));

class MyAppBar extends StatelessWidget {
  MyAppBar({required this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0,
      padding: new EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(
              onPressed: null,
              icon: new Icon(Icons.menu),
              tooltip: 'Navigator menu'),
          new Expanded(child: new Center(
            child: title
          )),
          new IconButton(
              onPressed: null, icon: new Icon(Icons.search), tooltip: 'Search')
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
              title: new Text(
                  'Basic Widget Title',
                              style: Theme.of(context).primaryTextTheme.headline6)
          ),
          new Expanded(child: new Center(child: new Text("Basic Widget")))
        ],
      ),
    );
  }
}
