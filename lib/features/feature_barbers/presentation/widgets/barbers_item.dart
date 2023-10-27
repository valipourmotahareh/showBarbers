import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:valipour_test/features/feature_barbers/domain/entities/barbers_entity.dart';

class BarbersItem extends StatelessWidget {
  final BarbersEntity barbersEntity;
  const BarbersItem({super.key,required this.barbersEntity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        key: PageStorageKey(key),
        title: Row(
          children: [
            CachedNetworkImage(
              imageUrl: barbersEntity.results!.first.avatar!,
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
                        barbersEntity.results!.first.fullname!,
                        style: const TextStyle(fontSize: 14),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star_border_sharp),
                          Text(
                              barbersEntity.results!.first.rate.toString()
                          )
                        ],
                      ),

                    ],
                  ),
                  Text(
                    barbersEntity.results!.first.slug!,
                    style: const TextStyle(fontSize: 12),
                  ),
                  Text(
                    barbersEntity.results!.first.address!,
                    style: TextStyle(fontSize: 11),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
