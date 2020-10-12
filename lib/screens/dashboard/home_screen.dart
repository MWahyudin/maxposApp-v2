import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maxposv2/components/responsive.dart';
import 'package:maxposv2/config/palette.dart';
import 'package:maxposv2/config/styles.dart';
import 'package:maxposv2/data/data.dart';
import 'package:maxposv2/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          _buildHeader(screenHeight),
          _buildPosTips(screenHeight),
          _buildDetail(screenHeight)
        ],
      ),
      // drawer: Drawer(
      //   // child: ListView(
      //   //   children: <Widget>[
      //   //     UserAccountsDrawerHeader(
      //   //       accountName: Text('hi'),
      //   //       accountEmail: Text('hello'),
      //   //     )
      //   //   ],
      //   // ),
      // ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Palette.primaryColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45.0),
                bottomRight: Radius.circular(45.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: <Widget>[
                Text(
                  'Maxpos',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Selamat datang di aplikasi maxpos',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600),
                ),
                Text('Aplikasi yang memudahkan usaha anda',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300)),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Row(
                  children: <Widget>[
                    FlatButton.icon(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        onPressed: () {
                          print('featured list tapped');
                        },
                        icon: const Icon(Icons.featured_play_list,
                            color: Colors.black),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        label: Text('Featured List',
                            style: Styles.buttonTextStyle),
                        textColor: Colors.black)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildPosTips(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        // color: Colors.orange,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Keunggulan',
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Container(
                  // padding: EdgeInsets.only(right: 8),
                  // padding: EdgeInsets.all(30),
                  // margin: EdgeInsets.all(4),
                  child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: postTips
                          .map(
                            (e) => InkWell(
                              onTap: () {
                                print(e['link']);
                              },
                              child: Column(
                                children: <Widget>[
                                  SvgPicture.asset(
                                    e.keys.first,
                                    height: screenHeight * 0.12,
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.015,
                                  ),
                                  Text(
                                    e.values.first,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          )
                          .toList()),
                )),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildDetail(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: EdgeInsets.all(10.0),
        // color: Colors.blue,
        height: screenHeight * 0.20,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFe49f9f), Palette.primaryColor],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset(
              'assets/images/hand.png',
              width: 150.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Kini hanya lewat Gadget',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Text(
                  'Kebutuhan usaha Anda\n jadi mudah.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                  maxLines: 2,
                  // textAlign: TextAlign.center,
                ),
              ],
            )
            // SvgPicture.asset('assets/images/undraw_Content3.svg')
          ],
        ),
      ),
    );
  }
}
