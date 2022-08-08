



import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

enum ActionType{
  addNote,
  editNote
  
}

class AddScreen extends StatelessWidget {
   AddScreen({Key? key,
  
  required this.type,
  this.id
  }) : super(key: key);

 Widget get saveButton=>TextButton.icon(onPressed: (){
  switch(type){
    case ActionType.addNote:
    // addnote
    case ActionType.editNote:
    // editNote 
  }
 },
  icon: Icon(Icons.save,color: Colors.white,),
   label: Text('Save',style: TextStyle(color: Colors.white,fontSize: 20)
   ,));

 final ActionType type;
 String? id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(type.name.toUpperCase()),
        actions: [
          saveButton,
        ],


      ),
      body: Padding(padding: EdgeInsets.all(15),
      child: Column(
        
        children: [
          TextFormField(
      
            decoration: InputDecoration(
              hintText: 'Title',
              hintMaxLines: 1,
              
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            
            decoration: InputDecoration(
              hintText: 'Sub title',
              border: OutlineInputBorder()
            ),
          ),
        //   const  SizedBox(
        //     height: 25,
        //   ),
        //  MaterialButton(onPressed: (){},
        //  child: Text('Save',
        //  style:  TextStyle(
        //   color: Colors.white,
        //   fontSize: 20
        //  ),
        //  ),
        //  color: Colors.blue,)

        ],
      ),
      ),
      

    );
    
  }
}