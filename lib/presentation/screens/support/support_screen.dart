

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/presentation/widgets/default_text_form_field.dart';

import '../../styles/app_colors.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController body = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text('Support',
          style: TextStyle(
              color: Colors.white,
              fontSize: 17.sp
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 2.h,),
          DefaultTextFormField(
            onChanged: (){},
            validation: (){},
            controller: name,
            hintText: 'Name',
          ),
          SizedBox(height: 2.h,),
          DefaultTextFormField(
            onChanged: (){},
            validation: (){},
            controller: email,
            hintText: 'Email',
          ),
          SizedBox(height: 2.h,),
          DefaultTextFormField(
            onChanged: (){},
            validation: (){},
            maxLines: 5,
            controller: name,
            hintText: 'Whats Make you Unhappy',
          ),
        ],
      ),
    );
  }
}
