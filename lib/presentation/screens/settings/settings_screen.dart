import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:workshop/presentation/screens/login/login_screen.dart';
import 'package:workshop/presentation/screens/support/support_screen.dart';

import '../../widgets/default_text.dart';
import '../faq/faq_screen.dart';
import '../our_parteners/ourparteners.dart';
import '../terms_and_cinditions/terms&conditions.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ListTile(
            title: DefaultText(
              text: 'FAQ',
              textColor: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 20.sp,
            ),
            trailing: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const FAQScreen()));
                }, icon: const Icon(Icons.arrow_forward_ios)),
          ),
          Divider(
            color: Colors.white,
            thickness: 1,
            height: 0.2.h,
          ),
          ListTile(
            title: DefaultText(
              text: 'Terms & conditions',
              textColor: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 20.sp,
            ),
            trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TermsAndConditions()));
                },
                icon: const Icon(Icons.arrow_forward_ios)),
          ),
          Divider(
            color: Colors.white,
            thickness: 1,
            height: 0.2.h,
          ),
          ListTile(
            title: DefaultText(
              text: 'Our Partners',
              textColor: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 20.sp,
            ),
            trailing: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const OurPartners()));
                }, icon: const Icon(Icons.arrow_forward_ios)),
          ),
          Divider(
            color: Colors.white,
            thickness: 1,
            height: 0.2.h,
          ),
          ListTile(
            title: DefaultText(
              text: 'Support',
              textColor: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 20.sp,
            ),
            trailing: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SupportScreen()));
                }, icon: const Icon(Icons.arrow_forward_ios)),
          ),
          Divider(
            color: Colors.white,
            thickness: 1,
            height: 0.2.h,
          ),
          ListTile(
            title: DefaultText(
              text: 'Logout',
              textColor: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 20.sp,
            ),
            trailing: IconButton(
                onPressed: () {
                  showAlertDialog( context);
                }, icon: const Icon(Icons.arrow_forward_ios)),
          ),
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed:  () {
     // Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingScreen()));

    },
  );
  Widget continueButton = TextButton(
    child: Text("Ok"),
    onPressed:  () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Logout"),
    content: Text("Would you like to Logout?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
