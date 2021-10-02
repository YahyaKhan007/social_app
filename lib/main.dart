// @dart=2.9

import 'package:flutter/material.dart';
import 'package:social/CreateChatUserAddedFliters.dart';
import 'package:social/UI/Likes.dart';
import 'package:social/UI/Location.dart';
import 'package:social/UI/Profile.dart';
import 'package:social/UI/gender.dart';
import 'package:social/UI/login.dart';
import 'package:social/UI/mainPage.dart';
import 'package:social/UI/mainPost.dart';
import 'package:social/UI/messages.dart';
import 'package:social/UI/onBoarding.dart';
import 'package:social/UI/password_recovery.dart';
import 'package:social/UI/profilePro.dart';
import 'package:social/UI/search.dart';
import 'package:social/UI/searchResult.dart';
import 'package:social/UI/searchResultsNearYou.dart';
import 'package:social/UI/signinAccount.dart';
import 'package:social/UI/signup.dart';
import 'package:social/create_chatUser_added.dart';
import 'package:social/diologue.dart';
import 'package:social/event.dart';
import 'package:social/galleryPage.dart';
import 'package:social/near_you_setting.dart';
import 'package:social/near_you_setting_business.dart';

import 'Data/assigmnt.dart';
import 'UI/comments.dart';
import 'UI/editprofile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NearYouSettingBusiness(),
    );
  }
}
