import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  title: '购物车复制',
  home: new Scaffold(
    appBar: new AppBar(
      title: new Text('购物车复制')
    ),
    body: new ShopList(productList: <Product>[
      new Product(name: '黄金'),
      new Product(name: '白银'),
      new Product(name: '青铜'),
      new Product(name: '钢铁')
    ])
  ),
));

class Product{
  final String name;

  const Product({required this.name});
}

typedef void ClickItem(Product product, bool inCart);

class ShopCartItem extends StatelessWidget {
  final Product product;
  final bool inCart;
  final ClickItem clickItem;

  ShopCartItem({required Product product, required this.inCart, required this.clickItem})
      : product = product, super(key: new ObjectKey(product));

  Color _getColor(BuildContext context){
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle? _getTextStyle(BuildContext context){
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
        clickItem(product, inCart);
      },
      leading: new CircleAvatar(
        backgroundColor: _getColor(context),
        child: new Text(product.name[0]),
      ),
      title: new Text(product.name, style: _getTextStyle(context)),
    );
  }
}

class ShopList extends StatefulWidget {
  final List<Product> productList;

  ShopList({required this.productList});

  @override
  State<StatefulWidget> createState() {
    return new ShopListState();
  }
}

class ShopListState extends State<ShopList>{
  Set<Product> _saveProduct = new Set();

  void _handleClick(Product product, bool inCart){
    setState(() {
      if(inCart){
        _saveProduct.remove(product);
      } else {
        _saveProduct.add(product);
      }

      print("购物车数量: $_saveProduct");
    });
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(horizontal: 8.0),
      children: widget.productList.map((product){
        return new ShopCartItem(product: product, inCart: _saveProduct.contains(product),
            clickItem: _handleClick);
      }).toList()
    );
  }
}