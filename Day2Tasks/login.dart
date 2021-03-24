import 'package:flutter/cupertino.dart';
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
      home: LogInPage(),
    );
  }
}

class LogInPage extends StatefulWidget {
  LogInPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LogInPage createState() => _LogInPage();
}


class _LogInPage extends State<LogInPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: buildBody(),
          ),
        ),
      ),
    );
  }

  Widget buildBody() {
    var _textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );

    var _textStyle2 = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 24,
    );


    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 50),
        Row(children: [
          Text('Log in ', style: _textStyle2 ,),
          Padding(padding: EdgeInsets.fromLTRB(180, 0, 0, 0),
            child:Text('sign Up' ,style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),),
          ),
        ],
        ),
        SizedBox(height: 25),
        Image.asset("asset/images/logo1.png",
          height: 100,
          width: 100,),

        Text(
          "Go Kart",
          style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 50),

        TextField(
          decoration: InputDecoration(
              hintText: 'UserName or Email'
          ),
        ),
        SizedBox(height: 20),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Password'
          ),
        ),

        SizedBox(height: 20),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Forget Password?",
            style: _textStyle,
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ElevatedButton(
            onPressed: () {},
            child: Container(
              alignment: Alignment.center,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.assignment_turned_in_outlined,
                    color: Colors.blue,
                  ),
                  Text(
                    "ٍLOG IN",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.white,
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0))),
            ),
          ),
        ),



        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            text: TextSpan(
              text: 'Don\'t have an Account ',
              style: TextStyle(color: Colors.grey , fontSize: 18),
              children: <TextSpan>[
                TextSpan(text:'Regester', style: TextStyle(fontWeight: FontWeight.bold ,
                    color: Colors.black)),
              ],
            ),
          ),
        ),

        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Continue With' , style: TextStyle(color: Colors.grey
                , fontSize: 20
            ),)
        ),

        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/google-plus.png'),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Colors.blue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), primary: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/facebook.png'),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Colors.blue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), primary: Colors.white),
                ),
              ),
            ],
          ),
        ),

      ],
    );

  }
}
