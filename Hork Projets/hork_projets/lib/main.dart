
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: Image.network("data:image/jpeg;base64,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"),
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
