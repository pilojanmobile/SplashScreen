import 'package:flutter/material.dart';
import 'package:flutterwidget/Menu.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Menu()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/logo.png'),
                    ),
                    Text(
                      'Flutter Splash',
                      style: GoogleFonts.aclonica(
                          textStyle: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.orange)),
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
