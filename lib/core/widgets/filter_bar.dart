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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "1 Barber Shop/barbers",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/images/filter.png'),
                    const Padding(
                      padding: EdgeInsets.only(left: 3),
                      child: Text(
                        "Filters",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilterItem(
                  text: "Shop",
                  selected: true,
                ),
                FilterItem(
                  text: "Barbers",
                  selected: true,
                ),
                FilterItem(
                  text: "HairCut",
                  selected: true,
                ),
                FilterItem(
                  text: "Face Shave",
                  selected: false,
                ),
                FilterItem(
                  text: "Skin Fade",
                  selected: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
