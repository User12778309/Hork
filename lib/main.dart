import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:window_size/window_size.dart';
import 'dart:convert';
import 'package:flutter/services.dart' as root_bundle;
import 'dart:async'; // Import for Timer
import 'dart:io';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setWindowTitle('Hork');
  setWindowMinSize(Size(700, 500));
  setWindowMaxSize(Size(700, 500));
  runApp(const MyApp());
}

void executeVBScript(int get_coins) async {
  // Define the VBScript content
  String vbScriptContent = 'MsgBox "Your timmer is finish" & vbCrLf & "Reboot to get coins : $get_coins", 262192, "Hork"';

  // Define the file path for the VBScript
  String filePath = 'File.vbs';

  // Create the VBScript file
  File vbScriptFile = File(filePath);
  await vbScriptFile.writeAsString(vbScriptContent);

  // Execute the VBScript
  try {
    ProcessResult result = await Process.run('wscript.exe', [filePath]);

    // Print the output of the command
    print('Exit code: ${result.exitCode}');
    print('Standard output: ${result.stdout}');
    print('Standard error: ${result.stderr}');
  } catch (e) {
    print('Error: $e');
  }
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
  int? coinsNum; // State variable to hold the coins number
  final TextEditingController _controller = TextEditingController(); // Controller for the input field

  // Function to get coins_num from the JSON file
  Future<void> getCoinsNum() async {
    try {
      // Load the JSON file from assets
      final jsonString = await root_bundle.rootBundle.loadString('assets/data.json');
      final jsonResponse = json.decode(jsonString);

      // Update the state variable with the coins_num
      setState(() {
        coinsNum = jsonResponse['coins_num'];
      });
    } catch (e) {
      print('Error loading JSON: $e');
      setState(() {
        coinsNum = null; // Reset to null in case of an error
      });
    }
  }

  // Function to update coins_num in the JSON file
  Future<void> updateCoinsNum(int newCoinsNum) async {
    try {
      // Get the directory for the app's documents
      final filePath = 'assets/data.json';
      
      // Read the existing JSON data
      final file = File(filePath);
      String jsonString = await file.readAsString();
      Map<String, dynamic> jsonData = json.decode(jsonString);
      
      // Update the coins_num value
      jsonData['coins_num'] = newCoinsNum;
      
      // Write the updated data back to the JSON file
      await file.writeAsString(json.encode(jsonData));
    } catch (e) {
      print("Error updating coins_num: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    getCoinsNum(); // Call the function to get coins_num when the widget is initialized
  }

  // Function to start the timer


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
            // Display the coins number
            Text(
              coinsNum != null ? "$coinsNum" : "",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
            ),
            Image.network("https://raw.githubusercontent.com/User12778309/Hork/refs/heads/main/windows/runner/resources/coin.png", height: 25),
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
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Buy"),
                              style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25)),
                            ),
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
                      title: Text('Set Timer'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children : <Widget>[
                          Text("Enter time in seconds ( 60 secondes = 1 coins ):"),
                          TextFormField(
                            controller: _controller, // Use the controller
                            decoration: const InputDecoration(
                              hintText: 'Enter seconds',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ],
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Start Timer'),
                          onPressed: () {
                            final int? seconds = int.tryParse(_controller.text);
                            
                            if (seconds != null) {
                              final double coins_to_get = seconds / 60; 
                              
                              Timer(Duration(seconds: seconds), () {
                                executeVBScript(coins_to_get.toInt());
                                print("Timer finished!"); // Print message when timer is done
                                updateCoinsNum(coinsNum! + coins_to_get.toInt()); // Update coins_num (increment by 1 for example)
                              });
                              Navigator.of(context).pop(); // Close the dialog
                            } else {
                              print("Please enter a valid number."); // Handle invalid input
                            }
                          },
                        ),
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
              child: Text('Work'),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 0, 59, 13),
    );
  }
}

