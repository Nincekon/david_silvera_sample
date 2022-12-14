import 'package:flutter/material.dart';
// import 'package:transparent_image/transparent_image.dart';
// import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'David sample',
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
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Bienvenue sur Cooking App'),
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
      _counter = _counter + 2;
    });
  }

  Widget titleSection = Container(
    padding: const EdgeInsets.all(16),
    child: Row(
      children: [

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "Graines de palme",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,

                  ),
                ),
              ),

              Text(
                "Par Nincekon YORO Zand??",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey.shade500,

                ),
              ),
            ],
          ),
        ),

        Icon(Icons.favorite_outline_rounded),
        Text(
          "55",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    ),
  );

  Widget buttonSection = Container(
    padding: const EdgeInsets.all(8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        _buildButtonColumn(Icons.comment, Colors.blue, "COMMENT"),

        _buildButtonColumn(Icons.share, Colors.blue, "ALARM"),
      ],
    ),
  );

  Widget contentSection = Container(
    padding: const EdgeInsets.all(32),
    child: Column(
      children: [

        Text(
          "1. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
          softWrap: true,
        ),

        Text(
          "2. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
          softWrap: true,
        ),
      ],
    ),

  );

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        children: [

          // To load an image from a remote server
          // Image.network(
            // 'https://example.com/image.png',
            // width: 600,
            // height: 240,
            // fit: BoxFit.cover,
          // ),

          // To load an image with cached copy from a remote server
          // CachedNetworkImage(
            // placeholder: (content, url) => Center(child: CircularProgressIndicator()),
            // errorWidget: (context, url, error) => Icon(Icons.error),
            // image: 'https://example.com/image.png',
            // width: 600,
            // height: 240,
            // fit: BoxFit.cover,
          // ),

          // To load an image with an animation from a remote server
          // FadeInImage.memoryNetwork(
            // placeholder: kTransparentImage,
            // image: 'https://example.com/image.png',
            // width: 600,
            // height: 240,
            // fit: BoxFit.cover,
          // ),

          // To load an image with a loader from a remote server
            // Stack(
              // children: [
                // Container(
                  // width: 600,
                  // height: 240,
                  // child: Center(child: CircularProgressIndicator()),

                // ),

                // FadeInImage.memoryNetwork(
                  // placeholder: kTransparentImage,
                  // image: 'https://example.com/image.png',
                  // width: 600,
                  // height: 240,
                  // fit: BoxFit.cover,
                // ),
              // ]
            // ),


          Image.asset(
              "images/graines_palme.jpg",
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),


          titleSection,

          buttonSection,

          contentSection,

          Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(
              // Column is also a layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug painting" (press "p" in the console, choose the
              // "Toggle Debug Paint" action from the Flutter Inspector in Android
              // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
              // to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Nombre de likes:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Column _buildButtonColumn(IconData icon, Color color, String label){
 return Column(
   mainAxisAlignment: MainAxisAlignment.center,
   children: [

     Container(
       padding: const EdgeInsets.only(bottom: 8),
       child: Icon(icon, color: color, size: 24,),
     ),

     Text(
       label,
       style: TextStyle(
           color: color,
         fontSize: 14,
         fontWeight: FontWeight.w400,
       ),
     ),
   ],
 );
}