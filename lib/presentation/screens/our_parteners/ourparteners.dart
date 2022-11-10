import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/default_text.dart';

class OurPartners extends StatelessWidget {
  const OurPartners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: DefaultText(
          text: 'OurPartners',
          fontSize: 20.sp,
          fontWeight: FontWeight.normal,
          textColor: Colors.white,
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10.sp),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.grey,
                      Colors.white30,
                      Colors.grey,
                    ]
                ),
                borderRadius: BorderRadius.circular(20.sp)
              ),
              child:
              Center(
                child: RichText(
                    textHeightBehavior: const TextHeightBehavior(
                      applyHeightToFirstAscent: true,
                      applyHeightToLastDescent: true,
                    ),
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'Orange',
                        style:
                        const TextStyle(
                            fontWeight: FontWeight.bold
                            ,color: Colors.deepOrange, fontSize: 30),
                        children: [
                          TextSpan(
                              text: ' Digital Center',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,

                                color: Colors.black,
                                fontSize: 30.sp,
                              ))
                        ])),
              ),
            ),
          ],
        ),
      ),);
  }
}
