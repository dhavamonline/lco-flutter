import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'CategoryDetails.dart';
import 'dart:async';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final String url="https://www.simplifiedcoding.net/wp-json/wp/v2/categories";
  var data;
  bool isLoading=true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getjsondata();
  }

  Future getjsondata() async {
    var response=await http.get(
      Uri.encodeFull(url)
    );
    setState(() {
      var convertdatatojson=json.decode(response.body);
      data=convertdatatojson;
      isLoading=false;
    });

  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: isLoading?CircularProgressIndicator():ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
              child: ListTile(
                onTap: (){categorydetail(data[index]['id'],data[index]['name']);},
                trailing: Text(data[index]['count'].toString()),
                title: Text(data[index]['name']),
                leading: Icon(Icons.category),
                subtitle: Visibility(
                  visible: false,
                  child: Text(data[index]['id'].toString()),
                ),
              ),
            );
          }
        ),
      ),
    );
  }

  categorydetail(int id, String name){
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => CategoryDetails(id:id,name: name)
    ));
  }
}