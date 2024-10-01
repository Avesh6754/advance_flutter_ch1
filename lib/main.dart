import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: (isDark)?ThemeMode.dark:ThemeMode.light,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
              width: double.infinity,
              height: height / 1.2,
              decoration: BoxDecoration(
                color: (isDark)?Color(0xff1C1C1E):Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: (isDark)?Colors.white24:Colors.black12,
                      blurRadius: 0.8,
                      spreadRadius: 0.5
                    )
                  ],
                  border: Border.all(color: Colors.black12, width: 1.2),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Yo Man!',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "It's a simple example of\n          dark theme",
                      style: TextStyle(fontSize: 30, color: Color(0xff9E9DA3)),
                    ),
                  ),
                  SizedBox(height: height/8,),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isDark=false;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      height: height / 8.5,
                      width: double.infinity,
                      decoration: BoxDecoration(color: (isDark)?Color(0xffFFD60A):Color(0xffFFCC00),borderRadius: BorderRadius.circular(15),),
                      alignment: Alignment.center,
                      child: Text('Light Icon',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isDark=true;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      height: height / 8.5,
                      width: double.infinity,
                      decoration: BoxDecoration(color:(isDark)?Color(0xffFF4539): Color(0xffFD3B31),borderRadius: BorderRadius.circular(15),),
                      alignment: Alignment.center,
                      child: Text('Dark Icon',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
bool isDark=false;