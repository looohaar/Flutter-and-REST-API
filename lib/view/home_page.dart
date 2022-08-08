

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_and_rest_api/view/add_screen.dart';

import 'note_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            
            children: List.generate(10, (index) => NoteItem(
              id: index.toString(),
              title: '',
              subtitle: '',

            )),

            ),
            
        ),
        
        ),
        floatingActionButton: FloatingActionButton(
          
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddScreen(type: ActionType.addNote,
            

            )
            
            ));
          },
        child: Text('Add',style: TextStyle(color: Colors.white),),),
    );
    
  }
}