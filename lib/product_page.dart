import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  ProductCard({this.title, this.qty, this.price});

  final String title;
  final int qty;
  final int price;

  @override
  State<StatefulWidget> createState() {
    return ProductCardState();
  }
}

class ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductPage(
                        title: widget.title,
                        qty: widget.qty,
                        price: widget.price,
                      )));
        },
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: <Widget>[
              Hero(child: Image.asset('images/corn.jpg'), tag: widget.title,),
              Text(
                widget.title,
                style: TextStyle(fontSize: 20),
              ),
              Row(
                children: <Widget>[
                  Text('${widget.qty} Pcs. left'),
                  Text('${widget.price} Baht')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductPage extends StatefulWidget {
  ProductPage({this.title, this.qty, this.price});

  final String title;
  final int qty, price;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProductPageState();
  }
}

class ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title.toUpperCase()),
      ),
      body: Column(children: <Widget>[
        Hero(child: Image.asset("images/broccoli.jpg"), tag: widget.title),
        Text(widget.title),
        Text("${widget.price} Baht"),
        Text("${widget.qty} Pcs. Left")
      ]),
    );
  }
}
