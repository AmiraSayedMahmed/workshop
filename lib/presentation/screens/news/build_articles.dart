import 'package:flutter/material.dart';
import 'package:workshop/presentation/screens/news/webview.dart';



Widget buildNewsScreenItem() =>   InkWell(
  onTap:(){
 //Navigator.push(context,MaterialPageRoute(builder: (context)=> WebViewScreen(articles['url'])));
    // navigateTo(context, WebViewScreen(articles['url']));
  } ,
  child: Padding(
    padding: const EdgeInsets.fromLTRB(15.0, 10.0 , 15.0 , 10.0),
    child: Container(
      height: 350,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column (
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 400.0,
            height: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: const DecorationImage(
                image:NetworkImage('https://thumbs.dreamstime.com/z/landscape-nature-mountan-alps-rainbow-76824355.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // the image
          const SizedBox(
            height: 15.0,
          ),
          Text(
            'articlestitle',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle (
                fontSize: 20.0,
                color: Colors.red

            ),
          ), //Title
          SizedBox(
            height: 10.0,
          ),
          // Text(
          //   "Body",
          //   maxLines: 3,
          //   overflow: TextOverflow.ellipsis,
          //   style: TextStyle (
          //       fontSize: 17.0,
          //       color: Colors.black
          //   ),
          // ),//body
          const SizedBox(
            height: 7.0,
          ),
          const Text(
            '15-12-2022',
            style: TextStyle (
              fontSize: 15.0,
              color: Colors.grey,
            ),
          ),//date

        ],
      ),
    ),
  ),
);
