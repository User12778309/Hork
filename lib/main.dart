
// DEV TIPS : run debug on chrome : flutter run --debug👍

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:window_size/window_size.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setWindowTitle('Hork');
  setWindowMinSize(Size(700,500));
  setWindowMaxSize(Size(700,500));
  // setWindowFrame(Rect.fromLTWH(100, 100, 800, 600));
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
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromARGB(177, 0, 180, 9),
        centerTitle:true,
        title: Image.network("https://raw.githubusercontent.com/User12778309/Hork/refs/heads/main/windows/runner/resources/banner_hork_project.png",height:250),
        toolbarHeight: 125),
        
      
        
      body:Center(
        
        child:Column(
          
  
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

              Text("Welcom to Hork ",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 25)) ,
              Text("Choose your mode : ",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 50)) ,

              
              
              ElevatedButton(
                onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Scrollable Dialog'),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: List.generate(300, (index) {
                                        return Text('Item ${index + 1}');
                                      }),
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
                          content: Text('Add time to work timer ( seconde ) : '),
                          actions: <Widget>[
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

)

          ] 
        ),
    
      ),
     
      backgroundColor: Color.fromARGB(255, 0, 59, 13),
    );
  }
}