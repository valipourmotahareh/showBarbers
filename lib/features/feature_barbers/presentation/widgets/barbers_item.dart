import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:valipour_test/features/feature_barbers/data/models/barbers_list_model.dart';

class BarbersItem extends StatelessWidget {
  final Results results;

  const BarbersItem({super.key, required this.results});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 3,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: CachedNetworkImageProvider(results.avatar!),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      results.fullname!,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.star_border_sharp,
                              color: Color(0xFFD3BA4C)),
                          Text(results.rate.toString(),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFD3BA4C),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                Text(
                  results.slug!,
                  style:
                      const TextStyle(fontSize: 14, color: Color(0xFFB4BBCA)),
                ),
                Text(
                  results.address!,
                  style:
                      const TextStyle(fontSize: 14, color: Color(0xFF808A9E)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
