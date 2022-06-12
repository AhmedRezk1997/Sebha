import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  var selecteditem;
  int _count = 0;
  void count() {
    setState(() {
      _count++;
    });
  }

  void reset() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("سبحة الاستغفار"),
        backgroundColor: Colors.brown[400],
      ),
      body: Column(children: [
        Container(
          height: 560,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/2.png"), fit: BoxFit.fill),
          ),
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 260,
                  width: 550,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage("images/3.png"))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '$_count',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 1,
              ),
              Container(
                child: DropdownButton(
                  hint: Text(
                    "اختار من هنا",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  dropdownColor: Colors.black,
                  items: [
                    "سبحان الله",
                    "الحمد لله",
                    "لا اله الا الله",
                    "الله اكبر",
                    "استغفر الله العظيم",
                    "اللهم صلي علي سيدنا محمد ",
                    "اللهم اغفر لنا ياغفور"
                  ]
                      .map((e) => DropdownMenuItem(
                            child: Text(
                              "$e",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      selecteditem = val;
                    });
                  },
                  value: selecteditem,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                // padding: EdgeInsets.only(left: 10),
                onPressed: count,
                color: Colors.brown[800],
                child: Text(
                  " ابدا الان",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                padding: EdgeInsets.only(
                  right: 10,
                ),
                onPressed: reset,
                color: Colors.brown[800],
                child: Text(
                  " اعاده",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ],
          )),
        ),
      ]),
    );
  }
}
