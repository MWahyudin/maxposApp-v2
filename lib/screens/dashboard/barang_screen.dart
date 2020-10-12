import 'package:flutter/material.dart';
import 'package:maxposv2/config/palette.dart';
import 'package:maxposv2/config/styles.dart';
import 'package:maxposv2/widgets/widgets.dart';

class BarangScreen extends StatefulWidget {
  BarangScreen({Key key}) : super(key: key);

  @override
  _BarangScreenState createState() => _BarangScreenState();
}

class _BarangScreenState extends State<BarangScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: Palette.primaryColor,
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          // SizedBox(height: screenHeight*0.4,),

          _buildListBarang(screenHeight),
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
            // bottomLeft: Radius.circular(70.0),
            bottomRight: Radius.circular(200),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Barang',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600),
                ),
                Text('atur barang kamu disini',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300)),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildListBarang(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.of(context).size.height - 180.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(75.0),
          ),
        ),
        child: ListView(
          primary: false,
          padding: EdgeInsets.only(left: 25.0, right: 20.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 10.0,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height - 300.0,
                child: ListView(
                  children: <Widget>[
                    _buildBarangItem('assets/images/barang/barang1.png',
                        'Baju olahraga', '\Rp.100.000'),
                    _buildBarangItem('assets/images/barang/barang2.png',
                        'Baju olahraga', '\Rp.100.000'),
                    _buildBarangItem('assets/images/barang/barang3.png',
                        'Baju olahraga', '\Rp.100.000'),
                    _buildBarangItem('assets/images/barang/barang4.png',
                        'Baju olahraga', '\Rp.100.000'),
                    _buildBarangItem('assets/images/barang/barang5.png',
                        'Baju olahraga', '\Rp.100.000'),
                    _buildBarangItem('assets/images/barang/barang6.png',
                        'Baju olahraga', '\Rp.100.000'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildBarangItem(String imgPath, String barangNama, String harga) {
  return Padding(
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
    child: InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10 , bottom: 10),
            child: Row(
              children: [
                Hero(
                  tag: imgPath,
                  child: Image(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 75.0,
                    width: 75.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      barangNama,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      harga,
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
            color: Colors.black,
          )
        ],
      ),
    ),
  );
  // SizedBox(
  //   height: MediaQuery.of(context).size.height * 0.04,
  // );
}
