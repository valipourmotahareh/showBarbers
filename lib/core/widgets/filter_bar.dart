import 'package:flutter/material.dart';
import 'package:valipour_test/core/widgets/filter_item.dart';

class FilterBar extends StatefulWidget {
  const FilterBar({super.key});

  @override
  State<FilterBar> createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("100 barber Shop/barbers",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.menu_open,color: Colors.black54,),
                        Text("Filters",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),

                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ],
              ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilterItem(text: "Shop",selected: true,),
                  FilterItem(text: "Barbers",selected: true,),
                  FilterItem(text: "HairCut",selected: true,),
                  FilterItem(text: "Face Shave",selected: false,),
                  FilterItem(text: "Skin Fade",selected: false,),
                ],
              ),
            ),
          )
            ],
          ),
        ));
  }
}
