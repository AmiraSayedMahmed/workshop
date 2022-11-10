

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../data/Models/section_model.dart';
import '../../widgets/default_text.dart';

class MidTermCardItem extends StatelessWidget {
  MidTermCardItem({
    required this.midModel,
    Key? key,
  }) : super(key: key);
  Model midModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
      child: Column(
        children: [
          DefaultText(text: midModel.title),
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const DefaultText(
                    text: 'Exam Date',
                    textColor: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.calendar_month_outlined,
                      ),
                      DefaultText(text: midModel.date)
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
                      DefaultText(text: midModel.startTime)
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
                      DefaultText(text: midModel.endTime)
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
