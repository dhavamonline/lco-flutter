import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var c1 = [
    "To Conatct",
    "To Account",
    "To Self",
    "Bank Balance",
    "Split Bill",
    "Request"
  ];
  var i1 = [
    Icon(Icons.arrow_upward, color: Colors.white, size: 30),
    Icon(Icons.account_balance, color: Colors.white, size: 30),
    Icon(Icons.subdirectory_arrow_left, color: Colors.white, size: 30),
    Icon(Icons.account_balance_wallet, color: Colors.white, size: 30),
    Icon(Icons.call_split, color: Colors.white, size: 30),
    Icon(Icons.subdirectory_arrow_left, color: Colors.white, size: 30),
  ];
  var c2 = [
    "Person1",
    "Person2",
    "Person3",
    "Person4",
    "Person5",
    "Person6",
    "Person7",
    "Person8"
  ];
  var i2 = [
    Icon(Icons.person),
    Icon(Icons.person),
    Icon(Icons.person),
    Icon(Icons.person),
    Icon(Icons.person),
    Icon(Icons.person),
    Icon(Icons.person),
    Icon(Icons.person)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 80.0,
              width: double.infinity,
              color: Color(0xfffff9c2),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.brightness_auto),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Set up AutoPay and never miss a bill\n payment!",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      width: 60,
                      child: MaterialButton(
                        color: Colors.deepPurple,
                        onPressed: () {},
                        child: Text(
                          "Add",
                          style: TextStyle(color: Colors.white),
                        ),
                        splashColor: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, left: 8),
                    child: Text(
                      "Money Transfers",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black87),
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                    child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, index) => Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: CircleAvatar(
                                backgroundColor: Colors.deepPurple,
                                radius: 23,
                                child: Column(
                                  children: <Widget>[
                                    Expanded(child: i1[index]),
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(c1[index]),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 2,
                  ),
                  SizedBox(
                    height: 120.0,
                    child: ListView.builder(
                        itemCount: 8,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, index) => Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      15.0, 19.0, 19.0, 0),
                                  child: IconButton(
                                    color: Colors.deepPurple,
                                    onPressed: () {},
                                    icon: i2[index],
                                    iconSize: 40,
                                    splashColor: Colors.lime,
                                  ),
                                ),
                                Text(c2[index])
                              ],
                            )),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          child: Icon(Icons.local_offer),
                          backgroundColor: Colors.deepPurple,
                        ),
                        Text("View All\n Offers")
                      ],
                    ),
                  ),
                  VerticalDivider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          child: Icon(Icons.card_giftcard),
                          backgroundColor: Colors.deepPurple,
                        ),
                        Text("View My\nRewards")
                      ],
                    ),
                  ),
                  VerticalDivider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          child: Icon(Icons.monetization_on),
                          backgroundColor: Colors.deepPurple,
                        ),
                        Text("Refer & Earn\nMin. 100rs")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Wrap(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/recharge.png"),
                              height: 40,
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Reacharge"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/dth.png"),
                              height: 40,
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("DTH"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/electricity.png"),
                              height: 40,
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Electricity"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/creditcard.png"),
                              height: 40,
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Credit Card"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/postpaid.png"),
                              height: 40,
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Postpaid"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/landline.png"),
                              height: 40,
                              width: 40,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
                              child: Text("Landline"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/broadband.png"),
                              height: 40,
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Broadband"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/gas.png"),
                              height: 40,
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Gas"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/water.png"),
                              height: 40,
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Water"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/datacard.png"),
                              height: 40,
                              width: 40,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
                              child: Text("Datacard"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/insurance.png"),
                              height: 40,
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Insurance"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 8),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/muncipaltax.png"),
                              height: 40,
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Municipal Tax"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/googleplay.png"),
                              height: 40,
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("Google Play"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage("assets/giftcardd.png"),
                              height: 40,
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Other\nGift Cards",
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}