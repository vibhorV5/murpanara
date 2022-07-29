import 'package:flutter/material.dart';
import 'package:murpanara/constants/about_us_texts.dart';
import 'package:murpanara/constants/refund_returns_texts.dart';
import 'package:murpanara/constants/styles.dart';

class RefundAndReturnsPage extends StatelessWidget {
  const RefundAndReturnsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        elevation: 0,
        centerTitle: true,
        // title: Text('About us'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              left: _mediaQuery.size.width * 0.04,
              right: _mediaQuery.size.width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: _mediaQuery.size.width,
                // color: Colors.pink,
                child: Image.asset('assets/images/mpr_main.png'),
              ),
              Container(
                margin: EdgeInsets.only(top: 35),
                child: Text(
                  'Refund & Return Policy',
                  style: kBold.copyWith(fontSize: 25),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(
                  refundAndReturnText1,
                  style: kRegular.copyWith(fontSize: 14),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 35),
                child: Text(
                  'Refunds',
                  style: kBold.copyWith(fontSize: 25),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(
                  refundAndReturnText2,
                  style: kRegular.copyWith(fontSize: 14),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 35),
                child: Text(
                  'Contact Us',
                  style: kBold.copyWith(fontSize: 25),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(
                  "Contact us 24/7 at - support@murpanara.com for any further queries.",
                  style: kSemibold.copyWith(fontSize: 14),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 120),
                child: Text(
                  copyRight,
                  style: kBold.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}