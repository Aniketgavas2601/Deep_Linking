import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void initDynamicLinks() async {
    FirebaseDynamicLinks.instance.onLink.asBroadcastStream();
    //(
        //   (PendingDynamicLinkData dynamicLink)async{
        //     final Uri deepLink = dynamicLink.link;
        //     // Get.toNamed(deepLink.queryParameters.values.first);

        //     print("Deep Linking"+deepLink.toString());
        //   },
        //   onError: (Exception e) {
        //     print(e);
        //   },
        // );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initDynamicLinks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deep Link'),
      ),
      body: Center(
        child: Container(
          child: Text("DeepLinking Page"),
        ),
      ),
    );
  }
}
