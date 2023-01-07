import 'package:efundusv2/page/viewcourse.dart';
import 'package:flutter/material.dart';
import 'package:efundusv2/page/onboarding_page.dart';
import 'package:efundusv2/page/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Scaffold(
        body: SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Error,contact your administrator...",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          // SizedBox(height: 10.0),
          // ElevatedButton(onPressed: (context)=>{
          //    Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => HomePage());
          // },
          //  child: Text("Go back..."))
        ],
      ),
    ));
  };
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Efundus';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
            primarySwatch: Colors.lightBlue, fontFamily: 'Plus Jakarta Sans'),
        // home: OnBoardingPage(),
        home: const HomePage(),
        // home: const ViewCourse(),
      );
}
