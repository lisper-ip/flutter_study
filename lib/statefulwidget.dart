import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: 'StateFull Widget',
  home: new Center(
    child: new Counter(),
  ),
));

class Counter extends StatefulWidget {

  @override
  createState() => new CounterState();
}

class CounterState extends State<Counter>{
  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _increment(){
    setState(() {
      _counter ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new ButtonPress(onPress: _increment),
        new DisplayCounter(count: _counter)
      ],
    );
  }
}

class ButtonPress extends StatelessWidget {
  final VoidCallback onPress;
  ButtonPress({required this.onPress});

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(onPressed: onPress, child: new Text('Increment'));
  }
}

class DisplayCounter extends StatelessWidget {
  final int count;

  DisplayCounter({required this.count});

  @override
  Widget build(BuildContext context) {
    return new Text('Counter111: $count');
  }

}