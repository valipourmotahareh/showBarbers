import 'package:flutter/material.dart';

class LineService extends StatelessWidget {
  const LineService({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset('assets/images/hair_cut.png'),
                  Text("HAIRCUT",style: TextStyle(color: Colors.white)),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/face_shave.png'),
                  Text("FACES SHAVE",style: TextStyle(color: Colors.white),),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/skin_fades.png'),
                  Text("SKIN FADES",style: TextStyle(color: Colors.white)),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/coloring.png'),
                  Text("COLORING",style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
        ));
  }
}
