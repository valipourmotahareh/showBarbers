import 'package:flutter/material.dart';

class BarbersItem extends StatelessWidget {
  const BarbersItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        key: PageStorageKey(key),
        title: Row(
          children: [
            Text('key'),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                   " t.count",
                    style: TextStyle(fontSize: 11),
                  ),
                  Text(
                    'test',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "t.price",
                    style: TextStyle(fontSize: 11),
                  ),
                  Text(
                    'test',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
