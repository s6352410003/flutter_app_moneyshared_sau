import 'package:flutter/material.dart';
import 'package:flutter_app_moneyshared_sau/views/show_moneyshare_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var abcl = 0xFF8100BD;

class MoneyshareUI extends StatefulWidget {
  const MoneyshareUI({Key? key}) : super(key: key);

  @override
  _MoneyshareUIState createState() => _MoneyshareUIState();
}

class _MoneyshareUIState extends State<MoneyshareUI> {
  bool? check_tip = false;
  TextEditingController money_ctrl = TextEditingController();
  TextEditingController person_ctrl = TextEditingController();
  TextEditingController tip_ctrl = TextEditingController();

  //เมธอด -> โค้ดแสดง Dialog เตือน โดยจะรับข้อความมาแสดงที่ Dialog
  showWarningDialog(context, msg) {
    //เรียกใช้งานฟังก์ชัน showDialog
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Container(
            color: Colors.deepPurple,
            padding: EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'คำเตือน',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          content: Text(
            msg,
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'ตกลง',
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
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
                    controller: money_ctrl,
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
                    controller: person_ctrl,
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
                      onChanged: (checked) {
                        setState(() {
                          check_tip = checked;
                          if (check_tip == false) {
                            tip_ctrl.text = '';
                          }
                        });
                      },
                      value: check_tip,
                      activeColor: Color(abcl),
                      side: BorderSide(color: Color(abcl)),
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
                    controller: tip_ctrl,
                    keyboardType: TextInputType.number,
                    enabled: check_tip,
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
                  onPressed: () {
                    double? moneyshare = 0;

                    if (money_ctrl.text.isEmpty) {
                      showWarningDialog(context, 'ป้อนจำนวนเงินด้วย');
                      return;
                    } else if (person_ctrl.text.isEmpty) {
                      showWarningDialog(context, 'ป้อนจำนวนคนด้วย');
                      return;
                    } else if (check_tip == false) {
                      double? money = double.parse(money_ctrl.text);
                      int? person = int.parse(person_ctrl.text);
                      moneyshare = money / person;
                    } else {
                      if (tip_ctrl.text.isEmpty) {
                        showWarningDialog(context, 'ป้อนจำนวนทิปด้วย');
                        return;
                      } else {
                        double? money = double.parse(money_ctrl.text);
                        int? person = int.parse(person_ctrl.text);
                        double? tip = double.parse(tip_ctrl.text);
                        moneyshare = money / person;
                        moneyshare = money + tip / person;
                      }
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShowMoneyshareUI(
                          money: double.parse(money_ctrl.text),
                          person: int.parse(person_ctrl.text),
                          tip: double.parse(
                              tip_ctrl.text.isEmpty ? '0' : tip_ctrl.text),
                          moneyshare: moneyshare,
                        ),
                      ),
                    );
                  },
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
                  onPressed: () {
                    setState(() {
                      money_ctrl.text = '';
                      person_ctrl.text = '';
                      tip_ctrl.text = '';
                      check_tip = false;
                    });
                  },
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
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Created by APINAN SAU',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
