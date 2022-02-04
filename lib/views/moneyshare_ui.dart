import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var abcl = 0xFF8100BD;

class MoneyshareUI extends StatefulWidget {
  const MoneyshareUI({Key? key}) : super(key: key);

  @override
  _MoneyshareUIState createState() => _MoneyshareUIState();
}

class _MoneyshareUIState extends State<MoneyshareUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2E9FC),
      appBar: AppBar(
        backgroundColor: Color(abcl),
        centerTitle: true,
        title: Text(
          'แชร์เงินกันเถอะ',
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Image.asset(
                'assets/images/logo.png',
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 40,
                  right: 40,
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'ป้อนจำนวนเงิน (บาท)',
                    hintStyle: TextStyle(
                      color: Color(0xFFCCCCCC),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.moneyBillWave,
                      color: Color(abcl),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(abcl),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(abcl),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 40,
                  right: 40,
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'ป้อนจำนวนคน',
                    hintStyle: TextStyle(
                      color: Color(0xFFCCCCCC),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(abcl),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(abcl),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(abcl),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    onChanged: (checked) {},
                    value: true,
                    activeColor: Color(abcl),
                  ),
                  Text('ทิปให้พนักงานเสริฟ'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 40,
                  right: 40,
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'ป้อนจำนวนทิปให้พนักงาน (บาท)',
                    hintStyle: TextStyle(
                      color: Color(0xFFCCCCCC),
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.coins,
                      color: Color(abcl),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(abcl),
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(abcl),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'คำนวน',
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(abcl),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 80,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.refresh),
                label: Text(
                  'ยกเลิก',
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFDD2727),
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 80,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
