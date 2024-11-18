// DEV TIPS : run debug on chrome : flutter run --debug [device]👍

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

int timer_etat = 0;

void main() {
  runApp(const MyApp());
}

void add_15_minutes()
{
  print(timer_etat = timer_etat + ( 15 * 60));
  print("^ seconds");
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
        title: Image.network("https://raw.githubusercontent.com/User12778309/Hork/refs/heads/main/Hork%20Projets/hork_project/windows/runner/resources/banner_hork_project.png",height:250),
        toolbarHeight: 125),
        
      
        
      body:Center(
        
        child: Column(
          
  
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


             Text("Work",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,

            ElevatedButton(
              onPressed: add_15_minutes,
              
              child: const Text('Add 15 minutes'),
              ),

              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,
              //Text("Hack",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight:FontWeight.bold,fontSize: 75)) ,



              
            
          ],
      ),
     
       
      ),
      backgroundColor: Color.fromARGB(255, 0, 59, 13),
    );
  }
}
