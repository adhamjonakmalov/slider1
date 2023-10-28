import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool a = false;
  void fn(v) {
    setState(() {
      a = v;
    });
  }

  bool a1 = false;
  void fn1(v1) {
    setState(() {
      a1 = v1;
    });
  }

  String ab = '';
  void fnb(vb) {
    setState(() {
      ab = vb;
    });
  }

  bool af = false;
  void fnf(vf) {
    setState(() {
      af = vf;
    });
  }

  bool a3 = false;
  void fn3(v3) {
    setState(() {
      a3 = v3;
    });
  }

  bool a4 = false;
  void fn4(v4) {
    setState(() {
      a4 = v4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 44, 7, 255),
          title: Text(
            'Settings',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 400, bottom: 10),
              child: Text(
                'Toggle',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Cellular data',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
                Container(margin: EdgeInsets.only(right: 10), child: Switch(value: a, onChanged: fn)),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              width: 520,
              height: 1,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Wi-Fi',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
                Container(margin: EdgeInsets.only(right: 10), child: Switch(value: a1, onChanged: fn1)),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              width: 520,
              height: 1,
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.only(right: 330, bottom: 10),
              child: Text(
                'Single check',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Allow notifications',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
                Container(margin: EdgeInsets.only(right: 10), child: Radio(value: 'a', groupValue: ab, onChanged: fnb)),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              width: 520,
              height: 1,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    'Turn off notifications',
                    style: TextStyle(fontSize: 23),
                  ),
                ),
                Container(margin: EdgeInsets.only(right: 10), child: Radio(value: 'ab', groupValue: ab, onChanged: fnb)),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              width: 520,
              height: 1,
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.only(right: 320, bottom: 10),
              child: Text(
                'Multiple check',
                style: TextStyle(fontSize: 23),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    margin: EdgeInsets.only(right: 220),
                    child: Text(
                      'Microphone access',
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                ),
                Checkbox(value: af, onChanged: fnf)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    margin: EdgeInsets.only(right: 245),
                    child: Text(
                      'Location access',
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                ),
                Checkbox(value: a3, onChanged: fn3)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    margin: EdgeInsets.only(right: 340),
                    child: Text(
                      'Haptics',
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                ),
                Checkbox(value: a4, onChanged: fn4)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
