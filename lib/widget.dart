import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
    title: 'Widget目录',
    // home: new Scaffold(
    //   appBar: new AppBar(
    //     title: new Text('Widget目录')
    //   ),
    //   //body: new MyContainer()
    //   //body: new MyRow()
    //   //body: MyRow2(),
    //   //body: MyColumn(),
    //   //body: MyColumn2(),
    //   //body: MyImage1(),
    //   //body: MyText2(),
    //   //body: MyIcon(),
    //   //body: MyIcons(),
    //   //body: MyElevatedButton(),
    // ),
    //home: MyScaffold(),
    //home: MyScaffold2(),
    home: MyScaffold3()));

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 200.0,
      width: 200.0,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10.0),
      padding: new EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(
          color: Colors.blue[600],
          borderRadius: new BorderRadius.circular(10.0)),
      child: new Text('Container 练习',
          style: new TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              backgroundColor: Colors.red[500])),
      //transform: Matrix4.skewX(0.5)
    );
  }
}

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        Expanded(
            child: Text('文字一',
                textAlign: TextAlign.center,
                style: TextStyle(backgroundColor: Colors.red[600]))),
        Expanded(child: Text('文字二', textAlign: TextAlign.center)),
        Expanded(child: FittedBox(fit: BoxFit.fill, child: FlutterLogo()))
      ],
    );
  }
}

class MyRow2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      //从右往左排列
      textDirection: TextDirection.ltr,
      children: <Widget>[
        FlutterLogo(),
        Expanded(
            child: Text(
                "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.")),
        Icon(Icons.sentiment_very_satisfied)
      ],
    );
  }
}

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
            "Flutter's hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android."),
        Expanded(
            child: FittedBox(
          fit: BoxFit.contain,
          child: FlutterLogo(),
        ))
      ],
    );
  }
}

class MyColumn2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      textBaseline: TextBaseline.ideographic,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text('We move under cover and we move as one'),
        const Text('Through the night, we have one shot to live another day'),
        const Text('We cannot let a stray gunshot give us away'),
        const Text('We will fight up close, seize the moment and stay in it'),
        const Text('It’s either that or meet the business end of a bayonet'),
        const Text('The code word is ‘Rochambeau,’ dig me?'),
        Text('Rochambeau',
            style:
                DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0))
      ],
    );
  }
}

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
        image: NetworkImage(
            "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"));
  }
}

class MyImage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Image.network(
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg');
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      'Hello, lisper!Hello, lisper!Hello, lisper!Hello, lisper!Hello, lisper!Hello, lisper!Hello, lisper!',
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontWeight: FontWeight.bold, backgroundColor: Colors.blue[100]),
    );
  }
}

class MyText2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: "Hello, ", children: <TextSpan>[
      TextSpan(
          text: 'Lisper',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.italic))
    ]));
  }
}

class MyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Icon(
      Icons.favorite,
      color: Colors.red[500],
      size: 48.0,
      semanticLabel: 'Text to announce inaccessibility modes',
    );
  }
}

class MyIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Icon(
          Icons.favorite,
          color: Colors.red[500],
          size: 24.0,
          semanticLabel: "Favorite",
        ),
        Icon(
          Icons.audiotrack,
          color: Colors.green[500],
          size: 24.0,
        ),
        Icon(
          Icons.beach_access,
          color: Colors.blue[500],
          size: 24.0,
        )
      ],
    );
  }
}

class MyElevatedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 14)),
        onPressed: () {},
        child: Text('ElevatedButton'));
  }
}

class MyScaffold extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyScaffoldState();
  }
}

class MyScaffoldState extends State<MyScaffold> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade300,
      appBar: AppBar(
        title: Text('New Scaffold'),
      ),
      body: Center(
        child: Text('Click $_count'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Click me',
        onPressed: () {
          setState(() {
            _count++;
          });
        },
      ),
    );
  }
}

class MyScaffold2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyScaffold2State();
  }
}

class MyScaffold2State extends State<MyScaffold2> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        textStyle: TextStyle(
            backgroundColor: Colors.transparent, color: Colors.transparent));
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('New Scaffold2'),
      ),
      body: Center(child: Text('Center count: $_count')),
      bottomNavigationBar: BottomAppBar(
        child: Container(
            height: 60.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                    onPressed: () {
                      print('红心');
                    },
                    icon: Icon(Icons.favorite),
                    color: Colors.red[500]),
                IconButton(
                    onPressed: () {
                      print('音乐');
                    },
                    icon: Icon(Icons.audiotrack),
                    color: Colors.green[500]),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.beach_access),
                    color: Colors.red[500]),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.access_time),
                    color: Colors.grey[500])
              ],
            )),
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        tooltip: '点击加一',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}

class MyScaffold3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
          leading: IconButton(
              onPressed: () {
                print('leading');
              },
              icon: Icon(Icons.menu)),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  print('search');
                },
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  print('share');
                },
                icon: Icon(Icons.share)),
            TextButton(
                onPressed: () {
                  print('下一页');
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return Scaffold(
                      appBar: AppBar(
                        title: Text('新标题'),
                        centerTitle: true,
                      ),
                      body: Center(child: Text('This is New Page')),
                    );
                  }));
                },
                child: new Text('下一页', style: TextStyle(color: Colors.white)))
          ],
        ),
        body: Center(child: Text('This is center')));
  }
}
