import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      // appBar: AppBar(
      //
      //   title: Text(widget.title),
      // ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.grey.shade900,
                        shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0))),
                    ),
                    onPressed: (){},
                    child: const Text(
                        'This is where text will go',
                        style: TextStyle (
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                    ),
                  ),
                ),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0))),
                  ),
                  onPressed: (){},
                  child: const Text(
                      'True',
                      style: TextStyle (
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0))),
                  ),
                  onPressed: (){},
                  child: const Text(
                      'False',
                      style: TextStyle (
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
