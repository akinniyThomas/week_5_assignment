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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.yellow,
      // ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        //415298	65	82	152
        color: Color.fromARGB(255, 65, 82, 152),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Stack(
                children: [
                  Positioned(
                    left: -15,
                    top: -10,
                    child: SizedBox(
                      width: 300,
                      height: 250,
                      child: Image.asset("images/topBottom.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: -20,
                    top: -60,
                    child: SizedBox(
                      width: 250,
                      height: 250,
                      child: Image.asset("images/topTop.png",
                      fit: BoxFit.fill
                      ),
                    ),
                  ),
                  // Positioned(
                  //     top: 0,
                  //     right: 0,
                  //     child: SizedBox(
                  //         width: 100,
                  //         height: 100,
                  //         child: Image.network("https://readcivil.com/wp-content/uploads/2017/10/fluid-hysitron-inc.jpg",
                  //         fit: BoxFit.cover,
                  //         ),
                  //     ),
                  // )
                ],
              ),
            ),
            SizedBox(
              height: 350,
              width: double.infinity,
              child: Column(
                children: [
                  const Text("Log In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40
                    )
                  ),
                  SizedBox(
                    width: 300,
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 300,
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(

                          color: Colors.black
                        )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 300,
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white
                    ),
                    child: TextField(
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.green
                    ),
                    child: FlatButton(onPressed: (){},
                        child: const Text(
                      "LOGIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                          ),
                    )),
                  ),
                  SizedBox(
                    width: 300,
                    height: 20,
                  ),
                  Text("Forgot Password?",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                  Text("Register Here",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Stack(
                  children:[
                    Positioned(
                      left: -15,
                      bottom: -10,
                      child: SizedBox(
                        width: 150,
                        // height: 300,
                        child: Image.asset("images/actualBottomLeft.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      right: -15,
                      bottom: -200,
                      child: SizedBox(
                        // width: 100,
                        height: 300,
                        child: Image.asset("images/bottomLeft.png",
                            fit: BoxFit.fill
                        ),
                      ),
                    ),
                  ],
              ),
            ),
          ],
        ),
      ),
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      // body: Center(
      //   // Center is a layout widget. It takes a single child and positions it
      //   // in the middle of the parent.
      //   child: Column(
      //     // Column is also a layout widget. It takes a list of children and
      //     // arranges them vertically. By default, it sizes itself to fit its
      //     // children horizontally, and tries to be as tall as its parent.
      //     //
      //     // Invoke "debug painting" (press "p" in the console, choose the
      //     // "Toggle Debug Paint" action from the Flutter Inspector in Android
      //     // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
      //     // to see the wireframe for each widget.
      //     //
      //     // Column has various properties to control how it sizes itself and
      //     // how it positions its children. Here we use mainAxisAlignment to
      //     // center the children vertically; the main axis here is the vertical
      //     // axis because Columns are vertical (the cross axis would be
      //     // horizontal).
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headline4,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
