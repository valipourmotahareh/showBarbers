import 'package:flutter/material.dart';

class FilterItem extends StatelessWidget {
    bool selected=false;
    String text="";
   FilterItem({super.key,required this.selected,required this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){

        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.white,
            ),
            color: selected ? Color(0xFFAA935F) : null ,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child:Text(text,style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
