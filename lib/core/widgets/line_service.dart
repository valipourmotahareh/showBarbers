import 'package:flutter/material.dart';

class LineService extends StatelessWidget {
  const LineService({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/hair_cut.png',
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text("HAIRCUT",
                    style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/face_shave.png',
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  "FACES SHAVE",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/skin_fades.png',
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text("SKIN FADES",
                    style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/coloring.png',
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text("COLORING",
                    style: TextStyle(color: Colors.white, fontSize: 12)),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
