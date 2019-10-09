import 'package:flutter/material.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:todo_list/model/Note.dart';
import 'package:todo_list/Database_Helper.dart';
import 'NoteDetail.dart';

class NoteList extends StatefulWidget {
  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Note> noteList;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    if (noteList == null) {
      noteList = List<Note>();
      updateListView();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome To Do"),
        backgroundColor: Colors.deepOrange,
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () {
          navigateToDetail(Note('', '', 2), 'Add Note');
        },
        child: Icon(Icons.add_box),
      ),
    );
  }

  ListView getNoteListView() {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.deepOrangeAccent,
          elevation: 4,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('url'),
            ),
            title: Text(
              this.noteList[position].title,
              style: new TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              this.noteList[position].date,
              style: new TextStyle(color: Colors.black),
            ),
            trailing: GestureDetector(
              child: Icon(Icons.open_in_new, color: Colors.white),
              onTap: () {
                navigateToDetail(this.noteList[position], 'Edit To-Do');
              },
            ),
          ),
        );
      },
    );
  }

  void navigateToDetail(Note note, String title) async {
    bool result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NoteDetail(note, title);
    }));

    if (result == true) {
      updateListView();
    }
  }

  void updateListView() {
    final Future<Database> dbFuture = databaseHelper.initializeDatabase();
    dbFuture.then((database) {
      Future<List<Note>> noteListFuture = databaseHelper.getNoteList();
      noteListFuture.then((noteList) {
        setState(() {
          this.noteList = noteList;
          this.count = noteList.length;
        });
      });
    });
  }
}
