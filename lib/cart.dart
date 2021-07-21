import 'package:flutter/material.dart';

void main() => runApp(
    new MaterialApp(title: 'Cart', home: new Scaffold(
      appBar: new AppBar(
        title: new Text('购物车'),
      ),
      body: new ShopList(list: <Product>[
        new Product(name: '黄金'),
        new Product(name: '白银'),
        new Product(name: '铜')
      ]),
    )));

// 商品类
class Product{
  final String name;
  const Product({required this.name});
}

typedef void CartChangeCallBack(Product product, bool inCart);

class ShopCartItem extends StatelessWidget {
  final Product product;
  final bool inCart;
  final CartChangeCallBack callBack;

  ShopCartItem({required this.product, required this.inCart, required this.callBack}):
        super(key: new ObjectKey(product));

  Color _getColor(BuildContext context){
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle? _getStyle(BuildContext context){
    if(!inCart){
      return null;
    }
    return new TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough
    );
  }

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: (){
        callBack(product, inCart);
      },
      title: new Text(product.name, style: _getStyle(context),),
      leading: new CircleAvatar(
        backgroundColor: _getColor(context),
        child: new Text(product.name[0]),
      ),
    );
  }
}

class ShopList extends StatefulWidget {
  final List<Product> list;
  ShopList({required this.list, key}): super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new ShopListState();
  }
}

class ShopListState extends State<ShopList>{
  Set<Product> _productSet = new Set();

  void _handleCartChange(Product product, bool inCart){
    setState(() {
      if(inCart){
        _productSet.remove(product);
      } else {
        _productSet.add(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      children: widget.list.map((Product product){
        return new ShopCartItem(product: product, inCart: _productSet.contains(product),
            callBack: _handleCartChange);
      }).toList(),
    );
  }
}