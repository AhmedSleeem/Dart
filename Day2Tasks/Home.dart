import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Home'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.favorite,
                  size: 26.0,
                ),
              )
          ),
          Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.shopping_cart,
                  size: 26.0,
                ),
              )
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Saraa Poly Skills Embellished, Woven Salwar suit Material(Unstiched)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                  child: Text(
                    'Spcial Price',
                    style: TextStyle(color: Colors.red,fontSize: 10,
                        background: Paint()
                          ..strokeWidth = 15.0
                          ..color = Colors.grey
                          ..style = PaintingStyle.stroke
                          ..strokeJoin = StrokeJoin.round),
                  ),
                ),
              ),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 8),
                  child: Text(
                      "₹549"
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 8),
                  child: Text(
                    "₹1893",
                    style: TextStyle(color: Colors.grey,decoration: TextDecoration.lineThrough),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 8),
                  child: Text(
                    "₹70% off",
                    style: TextStyle(color: Colors.red),
                  ),
                ),

              ],),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        height: 25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "4.3",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                            ),

                          ],
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.pink,
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      "2814",
                      style: TextStyle(color: Colors.grey),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      "ratings",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Size',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'Tip: For the best fit, buy one size larger than your usual size',
                  style: TextStyle(color: Colors.grey,fontSize:12),
                ),
              ),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 20,
                      child: Text(
                        "XS",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 20,
                      child: Text(
                        "S",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 20,
                      child: Text(
                        "M",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: 20,
                      child: Text(
                        "L",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Color',
                  style: TextStyle(fontWeight: FontWeight.bold,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), primary: Colors.white),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), primary: Colors.white),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), primary: Colors.white),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Product Details',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'Color',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 128,
                  ),
                  Text(
                    'Yellow',
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Length',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    'Knee Length',
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Type',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 132,
                  ),
                  Text(
                    'Bandage',
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Sleeve',

                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    'Cap Sleeve',
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Product Description',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque dignissim malesuada lacus, in pulvinar ipsum commodo in. Quisque ac vulputate eros. Cras commodo tellus eu massa volutpat vestibulum. Aliquam pharetra, massa sed sollicitudin lacinia.'
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}