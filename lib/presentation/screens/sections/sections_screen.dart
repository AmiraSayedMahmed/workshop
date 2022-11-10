import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/data/Models/section_model.dart';
import 'package:workshop/presentation/widgets/default_text.dart';

import '../../styles/app_colors.dart';
import '../../widgets/default_appbar.dart';
import '../sections_card_item/sec_card_item.dart';

class SectionsScreen extends StatelessWidget {
   SectionsScreen({Key? key,}) : super(key: key);
  List secModelDummyData = <Model>[
    Model(title: 'Java' , endTime: '08:00am' , date: "18-12-2022",startTime: '06:00am'),
    Model(title: 'Kotlin' , endTime: '09:00am' , date: "19-12-2022",startTime: '07:00am'),
    Model(title: 'C++' , endTime: '10:00am' , date: "20-12-2022",startTime: '08:00am'),
    Model(title: 'C#' , endTime: '11:00am' , date: "21-12-2022",startTime: '09:00am'),
    Model(title: 'Flutter' , endTime: '12:00pm' , date: "22-12-2022",startTime: '10:00am'),
    Model(title: 'Python' , endTime: '01:00pm' , date: "23-12-2022",startTime: '11:00am'),
    Model(title: 'JavaScript' , endTime: '02:00pm' , date: "18-12-2022",startTime: '12:00pm'),
    Model(title: 'Java' , endTime: '03:00pm' , date: "24-12-2022",startTime: '01:00pm'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(7.h),
          child: const DefaultAppbar(
            automaticallyImplyLeading: true,
            title: 'Sections',
          )),
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          elevation: 5,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.sp),
              borderSide: const BorderSide(
                color: Colors.teal,
              )),
          margin: EdgeInsets.symmetric(
            vertical: 1.h,
          ),
          child: SectionCardItem(
            sectionModel: secModelDummyData[index],
          ),
        ),
        itemCount: secModelDummyData.length,
        padding: EdgeInsets.symmetric(horizontal: 5.w),
      ),
    );
  }
}
