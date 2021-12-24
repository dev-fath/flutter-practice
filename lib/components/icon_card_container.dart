import 'package:flutter/material.dart';
import 'package:hit_flutter/components/icon_card.dart';

class IconCardContainer extends StatelessWidget {
  const IconCardContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flexible(
        fit: FlexFit.loose,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: iconsInRow(),
        ),
      )
    );
  }
}

List<Flexible> iconsInRow(){
  return [
    Flexible(
      fit: FlexFit.tight,
      child: Row(
        children: [
          Expanded(flex: 1, child: IconCard(IconTypes.Parking)),
          Expanded(flex: 1,child: IconCard(IconTypes.Taxi)),
          Expanded(flex: 1,child: IconCard(IconTypes.EvCharge)),
          Expanded(flex: 1,child: IconCard(IconTypes.etc)),
        ],
      ),
    ),
    Flexible(
      fit: FlexFit.tight,
      child: Row(
        children: [
          Expanded(flex: 1, child: IconCard(IconTypes.Parking)),
          Expanded(flex: 1,child: IconCard(IconTypes.Taxi)),
          Expanded(flex: 1,child: IconCard(IconTypes.EvCharge)),
          Expanded(flex: 1,child: IconCard(IconTypes.etc)),
        ],
      ),
    ),
    Flexible(
      fit: FlexFit.tight,
      child: Row(
        children: [
          Expanded(flex: 1, child: IconCard(IconTypes.Parking)),
          Expanded(flex: 1,child: IconCard(IconTypes.Taxi)),
          Expanded(flex: 1,child: IconCard(IconTypes.EvCharge)),
          Expanded(flex: 1,child: IconCard(IconTypes.etc)),
        ],
      ),
    )
  ];
}