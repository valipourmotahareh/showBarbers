import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:valipour_test/features/feature_barbers/data/models/barbers_list_model.dart';
import 'package:valipour_test/features/feature_barbers/domain/entities/barbers_entity.dart';

class BarbersItem extends StatelessWidget {
  final Results results;
  const BarbersItem({super.key,required this.results});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: results.avatar!,
              height: 100,
              width: 100,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        results.fullname!,
                        style: const TextStyle(fontSize: 14),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star_border_sharp),
                          Text(
                              results.rate.toString()
                          )
                        ],
                      ),

                    ],
                  ),
                  Text(
                    results.slug!,
                    style: const TextStyle(fontSize: 12),
                  ),
                  Text(
                    results.address!,
                    style: const TextStyle(fontSize: 11),
                  )
                ],
              ),
            ),
          ],
        ),
    );
  }
}
