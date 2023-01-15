import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  final List<String> entries = <String>[
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19'
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('1461900054-Rizal Prambudi-PAGI'),
        ),
        body: Container(
            child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.only(top: 200, left: 8, right: 8),
                  itemCount: entries.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 50,
                      color: Colors.yellow,
                      child: Center(
                        child: Text('Pagi ${entries[index]}'),
                      ),
                    );
                  }),
            )
          ],
        )));
  }
}
