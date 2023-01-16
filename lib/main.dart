import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Button.dart';
import 'package:flutter_application_1/widgets/currency_card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(
            0xFF181818), //Color.fromRGBO => red, green, blue, opacity
        body: SingleChildScrollView(
          //allows us to scroll up and down in case our phone is not big enough to show us all the contents
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),

            //EdgeInsets.all == Making spaces Top, Bottom, Left and Right
            //EdgeInsets.only == Making spaces one of the Top, Bottom, Left and Right that you choose
            //EdgeInsets.symmetric == allows you to specify vertical or horizontal padding

            //we use column when we want to put things one under each other
            //we use row when we want to put things next to each other

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .end, //MainAxis of the row is on the horizontal direction https://flutteragency.com/what-is-diffrence-between-crossaxisalignment-and-mainaxisalignment/
                  //MainAxis of the column is on the vertical direction
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .end, //CrossAxis of the row is on the vertical direction https://flutteragency.com/what-is-diffrence-between-crossaxisalignment-and-mainaxisalignment/
                        //CrossAxis of the column is on the horizontal direction
                        children: [
                          const Text(
                            'Hey, Selena',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18,
                            ),
                          ),
                        ]),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$5 194 482', //$5 194 -> unavailable. Rather do /$ instead
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                      text: 'Transfer',
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'EURO',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                ),
                Transform.translate(
                  offset: const Offset(0,
                      -20), // adjusts position of the widget. must write Transform,translate above
                  child: const CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '9 785',
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -40),
                  child: const CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '428',
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    // Rows are for things next to each other
    // Columns are for things on top of each other
    // padding == widget that gives some space between boxes to boxes
    // add the comments(,) at the end whenever you create a class
    // this is the root of our application.
    // the widget that the root of the application should return has to be one of the 2 options
    // material applicationn: Google
    // cupertino application: Apple
  }
}
//extending to StatelessWidget, u must implement the 'build' method and whatever this method returns is what is going to show up on the screen
// build method : builds UI of ur widget

//Show Code Actions ==> Ctrl + Dot(.)
