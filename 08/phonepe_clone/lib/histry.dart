import 'package:flutter/material.dart';

class Histry extends StatefulWidget {
  @override
  _HistryState createState() => _HistryState();
}

class _HistryState extends State<Histry> {
  var des = [
    "Paid to",
    "Cashback from",
    "Payment to",
    "Receivecd from",
    "Payment to",
    "Transfer to",
    "Mobile recharged",
    "Received from",
    "Transfer to",
    "Cashback from"
  ];
  var source = [
    "Debited from",
    "Credited to",
    "Debited from",
    "Credited to",
    "Debited from",
    "Failed",
    "Debited from",
    "Credited to",
    "Debited from",
    "Credited to"
  ];
  var symbol = [
    AssetImage("assets/uco.png"),
    AssetImage("assets/axis.png"),
    AssetImage("assets/uco.png"),
    AssetImage("assets/uco.png"),
    AssetImage("assets/axis.png"),
    AssetImage("assets/failed.jpg"),
    AssetImage("assets/uco.png"),
    AssetImage("assets/axis.png"),
    AssetImage("assets/uco.png"),
    AssetImage("assets/uco.png"),
  ];
  var amount = [
    "₹1000",
    "₹35",
    "₹2500",
    "₹7200",
    "₹3100",
    "₹5000",
    "₹199",
    "₹5500",
    "₹12300",
    "₹100"
  ];
  var ico = [
    AssetImage(
      "assets/send.png",
    ),
    AssetImage("assets/phonelogo.png"),
    AssetImage("assets/send.png"),
    AssetImage("assets/request.png"),
    AssetImage("assets/send.png"),
    AssetImage("assets/send.png"),
    AssetImage("assets/recharge.png"),
    AssetImage("assets/request.png"),
    AssetImage("assets/send.png"),
    AssetImage("assets/phonelogo.png"),
  ];
  var time = [
    "9 hours ago",
    "20 hours ago",
    "3 days ago",
    "6 days ago",
    "15 Sep 2019",
    "12 Sep 2019",
    "10 Sep 2019",
    "15 Aug 2019",
    "7 Aug 2019",
    "22 Jul 2019"
  ];
  var namelist = [
    "Kumares",
    "PhonePe",
    "Ramesh",
    "Ranjith",
    "Arjun",
    "XXXXXXXXXXXXX0396",
    "9976902053",
    "Ranjith",
    "Vijay",
    "PhonePe"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 25,
                    width: 90,
                    child: OutlineButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Text("Month", style: TextStyle(fontSize: 13)),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                            )
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(1, 0, 18, 0),
                  child: SizedBox(
                    height: 30,
                    width: 120,
                    child: OutlineButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Text("Categories", style: TextStyle(fontSize: 13)),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                            )
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: SizedBox(
                    height: 30,
                    width: 90,
                    child: OutlineButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Text("Filters", style: TextStyle(fontSize: 13)),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 20,
                            )
                          ],
                        )),
                  ),
                ),
              ],
            ),
            Divider(thickness: 2, color: Colors.black12),
            SizedBox(
              height: 480,
              child: ListView.builder(
                itemCount: source.length,
                itemBuilder: (BuildContext context, index) => Container(
                  width: double.infinity,
                  height: 114,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: CircleAvatar(
                            foregroundColor: Colors.white,
                            radius: 25,
                            backgroundImage: ico[index],
                            backgroundColor: Colors.white,
                          ),
                          trailing: Text(amount[index]),
                          title: Text(des[index]),
                          subtitle: Text(namelist[index]),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(time[index],
                                  style: TextStyle(
                                      color: Colors.black26, fontSize: 13)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 153.0),
                              child: Text(source[index]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: CircleAvatar(
                                backgroundImage: symbol[index],
                                radius: 8,
                              ),
                            )
                          ],
                        ),
                        Divider(thickness: 6, color: Colors.black12)
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
