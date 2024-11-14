import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const strings = ["Ok","Cancel"];

void ok_popup_option()
{
  print(strings[0]);
}

void cancel_popup_option()
{

  print(strings[1]);
}

void main() {
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
        title: Image.network("https://raw.githubusercontent.com/User12778309/Hork/refs/heads/main/Hork%20Projets/hork_project/windows/runner/resources/logo.png"),
        toolbarHeight: 100),
      body: Center(

        child: Column(
          
  
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(
              
              onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                        title:const Text("Mon titre"),
                        content:const Text("Ma description"),
                        actions:<Widget>[
                          
                          TextButton(
                            onPressed:ok_popup_option ,
                             child: const Text("Ok")
                            ),

                            TextButton(
                            onPressed:cancel_popup_option ,
                             child: const Text("Cancel")
                            )

                        ]
                
                  
                  )
                ),

                child: const Text('Ma popup'),
                )
          ],
      ),
     
       
      ),
      backgroundColor: Color.fromARGB(255, 0, 59, 13),
    );
  }
}
