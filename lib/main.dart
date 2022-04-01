import 'package:flutter/material.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello Flutter",
      debugShowCheckedModeBanner: false,
      home: _MyHomeState(),
    );
  }
}

class _MyHomeState extends StatefulWidget {
  @override
  State<_MyHomeState> createState() => _MyHomeStateState();
}

class _MyHomeStateState extends State<_MyHomeState> {
  bool changeColor = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Demo setState"),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: changeColor ? Colors.green : Colors.purple,
                ),
                child: Center(
                  child: Text(count.toString(), style: TextStyle(color: Colors.black, fontSize: 20),),
                ),
              ),
              SizedBox(height: 20,),
              RaisedButton(
                child: Text("Tăng số"),
                  onPressed: () {
                  setState(() {
                    count++;
                  });
              }),
              SizedBox(height: 20,),
              RaisedButton(
                  child: Text("Giảm số"),
                  onPressed: () {
                    setState(() {
                      count--;
                    });
                  }),
              SizedBox(height: 20,),
              RaisedButton(
                child: Text("Đổi màu"),
                  onPressed: () {
                setState(() {
                  changeColor = !changeColor;
                });
              })
            ],
          ),
        ),
      ),
    );
  }
}
