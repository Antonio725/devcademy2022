import 'package:flutter/material.dart';

import '../../theme.dart';
import 'stars_bar_widget.dart';

class AccommodationInfo extends StatelessWidget {
  final String title;
  final String location;
  final int price;
  final int categorization;

  const AccommodationInfo(
      {Key? key,
      required this.title,
      required this.location,
      required this.price,
      required this.categorization})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: textTheme.bodyText1!.merge(const TextStyle(
              fontWeight: FontWeight.bold,
              height: 1.5,
            ))),
        const SizedBox(height: 10),
        Text(
          location,
          style: textTheme.bodyText2!.merge(TextStyle(
            color: ThemeColors.gray300,
          )),
        ),
        const SizedBox(height: 10),
        Text(
          'EUR $price',
          style: textTheme.bodyText1!.merge(TextStyle(
            color: ThemeColors.teal800,
          )),
        ),
        const SizedBox(height: 16),
        StarsBar(categorization: categorization)
      ],
    );
  }
}