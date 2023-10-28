import 'package:flutter/material.dart';

class TopHomePage extends StatelessWidget {
  const TopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Center(child: Image.asset('assets/images/cut.png')),
              Container(
                width: 110,
                decoration: BoxDecoration(
                  color: const Color(0x2DFFFFFF),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.location_pin,
                        color: Colors.white,
                      ),
                      Text("RanchView")
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Text(
            "Looke",
            style: TextStyle(
                fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Fastest Way to Find Barbers",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF8A95AB),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                        child: Center(
                            child: Text(
                      "Search in Barbers, Location and services ...",
                      style: TextStyle(color: Color(0xFFC7CDD9)),
                    ))),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6440FE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Image.asset('assets/images/ic-search.png'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
