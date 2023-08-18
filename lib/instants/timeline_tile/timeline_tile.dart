import 'dart:developer';

import 'package:dawiniii/instants/colors.dart';
import 'package:dawiniii/instants/timeline_tile/event_card.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final eventCard;

  const MyTimeLineTile({Key? key, required this.isFirst, required this.isLast, this.eventCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //gab between the events
      height: 150,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        //decorate the lines
        beforeLineStyle: LineStyle(
          color: AppColors.primary,
        ),
        //decorate the icon
        indicatorStyle: IndicatorStyle(
          width: 33,
          color: AppColors.primary,
          iconStyle: IconStyle(
            iconData: Icons.access_time,
            color: AppColors.white,
          ),
        ),
        //event card
        endChild: MyEventCard(
          child:eventCard,
        ),
      ),
    );
  }
}
