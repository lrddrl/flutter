import 'package:flutter/material.dart';
import 'package:flutter_ducafecat_news/common/utils/screen.dart';
import 'package:flutter_ducafecat_news/common/values/colors.dart';
import '../Camera/camera_screen.dart';

class BookmarksPage extends StatefulWidget {
  BookmarksPage({Key key}) : super(key: key);

  @override
  _BookmarksPageState createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("Open camera here"),
            onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=> CameraScreen()
                    )
                  );
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),

          SizedBox(
            height: 20,
          )

        ]
    );
  }
}

