
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/presentation/styles/app_colors.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  _FAQScreenState createState() => _FAQScreenState();
}

class MyItem{
  MyItem({this.isExpanded = false , this.header, this.body});
  bool isExpanded;
  final String? header;
  final String? body;

}

class _FAQScreenState extends State<FAQScreen> {
   List<MyItem> _item = <MyItem>[
    MyItem(header: "Q1: How many countries Orange Digital Center is in " , body: "Orange Digital Center is in 16 country "),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text( 'FAQ',
          style: TextStyle(
            fontSize: 20.sp,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(

        padding:  EdgeInsets.all(5.sp),
        children: [
          ExpansionPanelList(
            animationDuration: Duration(seconds: 2),
            dividerColor: Colors.deepOrange,
            expansionCallback: (int index , bool isExpanded){
              setState(() {
                _item[index].isExpanded = !_item[index].isExpanded;
              });
            },
            children:
              _item.map((MyItem item){
                return ExpansionPanel(
                  backgroundColor: Colors.white,
                  canTapOnHeader: true,

                  headerBuilder:(BuildContext context , bool isExpanded){
                  return Padding(
                      padding: EdgeInsets.only(left: 5.w , top: 0.5.h),
                      child:Text('${item.header}',
                        style: TextStyle(
                            fontSize: 17.sp,
                            color: Colors.red
                        ),

                      ));
                },
                    isExpanded: item.isExpanded,
                    body: Padding(
                        padding: EdgeInsets.only(bottom: 3.h),
                        child:Text('${item.body}',
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.black
                        ),
                        )),
                );
              }).toList(),

          )
        ],
      ),
    );

  }
}

