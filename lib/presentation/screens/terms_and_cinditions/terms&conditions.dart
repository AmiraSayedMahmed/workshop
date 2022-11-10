
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/presentation/styles/app_colors.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text('Terms And Conditions',
        style: TextStyle(
          color: Colors.white,
          fontSize: 17.sp
        ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10.sp),
        padding: EdgeInsets.all(5.sp),
      width: 100.w,
        height: 30.h,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10.sp)),
        ),
        child: const CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: 3.0 ,
        ),
      ),
    );
  }
}
