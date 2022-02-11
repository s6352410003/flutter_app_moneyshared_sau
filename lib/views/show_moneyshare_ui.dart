import 'package:flutter/material.dart';
import 'package:flutter_app_moneyshared_sau/views/moneyshare_ui.dart';

class ShowMoneyshareUI extends StatefulWidget {
  double? money, tip, moneyshare;
  int? person;

  ShowMoneyshareUI({
    Key? key,
    this.money,
    this.person,
    this.tip,
    this.moneyshare,
  }) : super(key: key);

  @override
  _ShowMoneyshareUIState createState() => _ShowMoneyshareUIState();
}

class _ShowMoneyshareUIState extends State<ShowMoneyshareUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2E9FC),
      appBar: AppBar(
        backgroundColor: Color(abcl),
        centerTitle: true,
        title: Text(
          'ผลการแชร์เงิน',
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/logo.png",
                height: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'จำนวนเงินที่จะหาร',
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                widget.money.toString(),
                style: TextStyle(
                  color: Color(abcl),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'บาท',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'จำนวนคนที่จะหาร',
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                widget.person.toString(),
                style: TextStyle(
                  color: Color(abcl),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'คน',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'จำนวนเงินทิป',
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                widget.tip.toString(),
                style: TextStyle(
                  color: Color(abcl),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'บาท',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'หารคนละ',
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 80,
                height: 80,
                color: Colors.yellow,
                alignment: Alignment.center,
                child: Text(
                  widget.moneyshare.toString(),
                  style: TextStyle(
                    color: Color(abcl),
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'บาท',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
