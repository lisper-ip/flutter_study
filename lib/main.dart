import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
      title: 'title',
      theme: ThemeData(
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.lightBlue[600],
          textTheme: TextTheme(bodyText2: TextStyle(fontSize: 24.0))),
      home: MyHomePage(),
    ));

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  String text = '等待中';

  void _loadAssetsJson() async{
    await rootBundle.loadString('images/json/text.json').then((str){
      setState(() {
        text = str;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Future.delayed(Duration(milliseconds: 2000), (){
      _loadAssetsJson();
    });
    return Scaffold(
      appBar: AppBar(title: Text('AppBart')),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('默认主题颜色'),
            Text(text),
            Image(image: AssetImage('images/batman_logo.png'), width: 60.0, height: 60.0)
            // Text('自定义字体颜色', style: TextStyle(color: Colors.red)),
            // Image(
            //     width: 80.0,
            //     height: 80.0,
            //     image: NetworkImage(
            //         'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
            // Image.network(
            //     'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            //     width: 100.0,
            //     height: 100.0),
            // Image.network(
            //     'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F7b49b53c3ddbe3b5a972b0496765e5bd73ae52589615-5zr0T8_fw658&refer=http%3A%2F%2Fhbimg.b0.upaiyun.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1629538290&t=0aa601181fc8a0476268d4353d1c0b53',
            //     width: 100.0,
            //     height: 100.0),
            // FadeInImage.memoryNetwork(width: 200, height:200, placeholder: kTransparentImage, image: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            // SvgPicture.asset('images/system.svg', width: 80.0, height: 80.0),
            // SvgPicture.network('https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/aa.svg', width: 80.0, height: 80.0),
          ]),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {},
      // ),
      floatingActionButton: Theme(
        data: ThemeData(accentColor: Colors.yellow),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: null,
        ),
      ),
    );
  }
}
