import 'package:flutter/material.dart';

class TopHomePage extends StatelessWidget {
  const TopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/images/cut.png'),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF868484),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child:Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: const [
                      Icon(Icons.location_pin,color: Colors.white,),
                      Text("Renchview")
                    ],
                  ),
                ),
              ),
            ],
          ),
          Text("Looke",style: TextStyle(fontSize: 50,color: Colors.white),),
          Text("Fasted way for find ",style: TextStyle(fontSize: 20,color: Colors.white),),
          Container(
            height: 50,
            width:MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Center(child: Text("search in barbers,location, service,....."))),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.search_outlined),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF6440FE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
