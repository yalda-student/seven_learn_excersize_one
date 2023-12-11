import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: const MyHomePage(),
      theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
              fillColor: Colors.white,
              enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              focusedBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              filled: true)),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff026D8E),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('asset/image/logo.png', width: 150),
              const SizedBox(height: 50),
              const Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
               TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'example@email.com',
                  prefixIcon: SvgPicture.asset('asset/image/email.svg', ),
                ),
              ),
              const SizedBox(height: 15),
               TextField(
                obscureText: true,
                obscuringCharacter: '*',
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  prefixIcon: SvgPicture.asset('asset/image/lock.svg', ),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'Forgot Password?',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xff020101),
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
