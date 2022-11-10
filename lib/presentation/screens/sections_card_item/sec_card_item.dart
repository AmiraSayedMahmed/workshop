

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/data/Models/section_model.dart';

import '../../widgets/default_text.dart';

class SectionCardItem extends StatelessWidget {
  SectionCardItem({
    required this.sectionModel,
    Key? key,
  }) : super(key: key);
  Model sectionModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
      child: Column(
        children: [
          DefaultText(text: sectionModel.title),
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const DefaultText(
                    text: 'Sec Date',
                    textColor: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.calendar_month_outlined,
                      ),
                      DefaultText(text: sectionModel.date)
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  const DefaultText(
                    text: 'Start Time',
                    textColor: Colors.grey,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.access_alarms_outlined,
                        color: Colors.green,
                      ),
                      DefaultText(text: sectionModel.startTime)
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  const DefaultText(
                    text: 'End Time',
                    textColor: Colors.grey,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.alarm,
                        color: Colors.red,
                      ),
                      DefaultText(text: sectionModel.endTime)
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
