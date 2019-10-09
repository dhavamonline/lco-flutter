import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  var p = ["34", "45", "462", "652", "56", "63", "5443", "08989", "870","0"];
var  names = ["Person1", "Person2", "Person3", "Person4", "Person5", "Person6", "Person7", "Person8", "Person9", "Person10"];
  @override
  Widget build(BuildContext context) {
    return Container(
        child:ListView.builder(
             itemCount: 10,
             itemBuilder: (BuildContext ctx, index){
            
              return Padding(
               padding: const EdgeInsets.all(5),
               child:  Container(
              height: 110,
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(10), color: Colors.white),
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
               
                children: <Widget>[
                  ListTile(
                    trailing: Column(children: <Widget>[
                      Text("₹"+p[index], style: TextStyle(fontSize: 16)),
                      
                    ],),
                    subtitle: Text(names[index]),
                    leading: CircleAvatar(radius: 20,backgroundImage: AssetImage("assets/images/uparrow.jpg"),),
                    title: Text("Paid To",style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                
                  
                ],
              ),
            ),
                    
               
              );

             },
        ),
      );
  }
}