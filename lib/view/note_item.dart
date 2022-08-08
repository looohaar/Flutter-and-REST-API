

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

import 'add_screen.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key,
  required this.id,
  required this.subtitle,
  required this.title
  
  }) : super(key: key);
  final String title;
  final String subtitle;
  final String id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddScreen(
  type: ActionType.editNote,
  id: id,
)));
      } ,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey,)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
                 Expanded(
                   child: Text('Titlesdgggggggggggggggggggggggggggggggggg',
                    style:  TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    ),
                 ),
 
                IconButton(onPressed: (){},
                 icon: Icon(Icons.delete,
                 color: Colors.redAccent,)),

                
              ],
            ),
             Expanded(
              child: Text(
                'adsffasdfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff',
                 style: TextStyle(
                  color: Color.fromARGB(255, 123, 122, 122),
                  fontSize: 20
                 ),
                 overflow: TextOverflow.ellipsis,
                 maxLines: 5,
                 ),

                 ),
          ],
        ),

      ),
    );
    
  }
}