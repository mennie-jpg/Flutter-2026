import 'package:flutter/material.dart';

void main() {
  runApp(portfolio());
}

class portfolio extends StatelessWidget {
  const portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_circle, color: Colors.white, size: 30),
          titleSpacing: 0,
          title: Text(
            'portfolio',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.blue[100],
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/img1.png'),
              ),
              Text(
                'منه سامي',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arabic',
                  fontSize: 25,
                ),
              ),
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.phone, color: Colors.blue),
                    SizedBox(width: 15),
          
                    Text('01012345678'),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(Icons.mail, color: Colors.blue),
                    SizedBox(width: 15),
                    Text('menna@no.com'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//material app
//text
//safearea
//scaffold
//appbar
//icon
//center
//container
//column
//row
//single child scroll view 
//wrap
//expanded
//padding
//sizedBox
//images
//app icon




