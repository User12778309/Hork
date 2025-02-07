import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:window_size/window_size.dart';
import 'dart:convert';
import 'package:flutter/services.dart' as root_bundle;

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setWindowTitle('Hork');
  setWindowMinSize(Size(700, 500));
  setWindowMaxSize(Size(700, 500));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hork',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 0, 0)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hork'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  // Function to print JSON content
  Future<void> printJsonContent() async {
    try {
      // Load the JSON file from assets
      final jsonString = await root_bundle.rootBundle.loadString('assets/data.json'); // Ensure this path is correct
      final jsonResponse = json.decode(jsonString);
      print(jsonResponse);// Print JSON content to the console
    } catch (e) {
      print('Error loading JSON: $e');

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(177, 0, 180, 9),
        centerTitle: true,
        title: Image.network("https://raw.githubusercontent.com/User12778309/Hork/refs/heads/main/windows/runner/resources/banner_hork_project.png", height: 250),
        toolbarHeight: 125,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Welcome to Hork", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold, fontSize: 25)),
            Text("Choose your mode:", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold, fontSize: 50)),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Buy Macro'),
                      content: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  <Widget>[
                            Image.network("https://github.com/User12778309/Hork/blob/main/assets/ashley_wave_trial_img.jpg?raw=true"),
                            ElevatedButton(onPressed: (){
                              print("-20");
                            }, child: Text("Buy"),style: ElevatedButton.styleFrom( padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),),
                            ),
                            Text("20", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                            Image.network("https://raw.githubusercontent.com/User12778309/Hork/refs/heads/main/windows/runner/resources/coin.png", height: 25),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Close'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25)),
              child: Text('Hack'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Work'),
                      content: Text('Add time to work timer (second; 1min = 1coin):'),
                      actions: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter your time',
                          ),
                        ),
                        TextButton(
                            child: Text('Done'),
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25)),
              child: Text('Work'),
            ),
            ElevatedButton(
              onPressed: () {
                printJsonContent(); // Call the function to print JSON content
              },
              child: Text("Debug"),
            ),
            Text("test", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
            Image.network("https://raw.githubusercontent.com/User12778309/Hork/refs/heads/main/windows/runner/resources/coin.png", height: 25),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 0, 59, 13),
    );
  }
}