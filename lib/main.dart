import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("BERITA TERBARU",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                  ),
                  Column(
                    children: [
                      Text("PERTANDINGAN HARI INI",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 121, 24, 92),
                        width: 2,
                      ),
                    ),
                    child: Column(
                      children: [
                        Column(
                          //Pertama
                          children: [
                            Container(
                              height: 200,
                              width: 473,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image:
                                      NetworkImage("https://picsum.photos/200"),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          //Kedua
                          children: [
                            Container(
                                height: 40,
                                width: 469,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text("Costa Mendekat Ke Palmeiras",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )),
                                )),
                          ],
                        ),
                        Row(
                          //Ketiga
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: 50,
                                width: 473,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 236, 31, 175),
                                  border: Border.all(
                                    color: Color.fromARGB(255, 236, 31, 175),
                                    width: 1,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Text("Transfer",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(padding: const EdgeInsets.only(top: 10)),
              Row(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color.fromARGB(255, 104, 103, 103),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 150,
                            width: 216,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image:
                                    NetworkImage("https://picsum.photos/200"),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Text("Pique Bilang Wasit Untungkan",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                )),
                            Text("Madrid, Koeman Tepok Jidat",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              Row(
                children: [
                  Container(
                      height: 50,
                      width: 477,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color.fromARGB(255, 104, 103, 103),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text("Barcelona Feb 13, 2021",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                )),
                          ],
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
