// ignore_for_file: unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'build_articles.dart';

// ignore: use_key_in_widget_constructors
class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: ListView.separated(
          itemBuilder: (context, index) => buildNewsScreenItem(),
          separatorBuilder: (context, index) =>
              SizedBox(
                height: 5,
              ),
          itemCount: 15,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
        ),

      ),
    );
  }







}//






















/*
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/presentation/views/news_card_item.dart';
import 'package:workshop/presentation/widgets/default_text.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.w),
        /// TODO: Get data form API.
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => const NewsCardItem(),
        ),
      ),
    );
  }
}
*/
