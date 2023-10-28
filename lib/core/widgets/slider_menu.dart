import 'package:flutter/material.dart';

class SliderMenu extends StatelessWidget {
  const SliderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/slider.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                 width: 1,
             color: Colors.white,
             ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child:Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/vector.png'),
                        Text("Near by you",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Text("Find the nearest Barber shop to you on the map",style: TextStyle(color: Colors.white),),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("View the map"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF6440FE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
