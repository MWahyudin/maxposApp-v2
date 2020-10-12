import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maxposv2/config/palette.dart';
import 'package:maxposv2/config/styles.dart';
import 'package:maxposv2/widgets/custom_app_bar_profile.dart';
import 'package:maxposv2/widgets/widgets.dart';

class ProfilScreen extends StatefulWidget {
  ProfilScreen({Key key}) : super(key: key);

  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Palette.primaryColor,
      appBar: CustomAppBarProfile(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          // _buildHeader(screenHeight),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70.0),
            // bottomRight: Radius.circular(45.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row(
            //   children: <Widget>[
            //     Text(
            //       'Maxpos',
            //       style: const TextStyle(
            //           color: Colors.white,
            //           fontSize: 30.0,
            //           fontWeight: FontWeight.bold),
            //     )
            //   ],
            // ),
            SizedBox(
              height: screenHeight * 0.001,
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 310),
                  child: Text(
                    'Profil',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 220),
                  child: Text('atur akun kamu disini',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300)),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                // Row(
                //   children: <Widget>[
                //     FlatButton.icon(
                //         padding: const EdgeInsets.symmetric(
                //             vertical: 10.0, horizontal: 20.0),
                //         onPressed: () {
                //           print('featured list tapped');
                //         },
                //         icon: const Icon(Icons.featured_play_list,
                //             color: Colors.black),
                //         color: Colors.white,
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(30.0)),
                //         label: Text('Featured List',
                //             style: Styles.buttonTextStyle),
                //         textColor: Colors.black)
                //   ],
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
