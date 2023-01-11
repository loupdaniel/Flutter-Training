import 'package:flutter/material.dart';


void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),

          //EdgeInsets.all == Making spaces Top, Bottom, Left and Right
          //EdgeInsets.only == Making spaces one of the Top, Bottom, Left and Right that you choose
          //EdgeInsets.symmetric == allows you to specify vertical or horizontal padding



          child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Hey, Selena',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                    Text('Welcome back',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ]
                  ),
                ],
              )
            ],
          ),
        ),
        
        ),
      );
  
    // add the comments(,) at the end whenever you create a class
    // this is the root of our application.
    // the widget that the root of the application should return has to be one of the 2 options
    //material applicationn: Google
    //cupertino application: Apple
  }
}
//extending to StatelessWidget, u must implement the 'build' method and whatever this method returns is what is going to show up on the screen
// build method : builds UI of ur widget

