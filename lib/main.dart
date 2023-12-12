import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var textFieldBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.transparent));
    return MaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
              contentPadding: EdgeInsets.zero,
              fillColor: Colors.white,
              enabledBorder: textFieldBorder,
              focusedBorder: textFieldBorder,
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
              const SizedBox(height: 80),
              Image.asset('asset/image/logo.png', width: 110),
              const SizedBox(height: 50),
              const Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 25),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'example@email.com',
                  prefixIcon: _TextFieldIcon(
                      icon: SvgPicture.asset('asset/image/email.svg')),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  prefixIcon: _TextFieldIcon(
                      icon: SvgPicture.asset('asset/image/lock.svg')),
                ),
              ),
              const SizedBox(height: 25),
              const _LoginButton(),
              const SizedBox(height: 25),
              const Text(
                'Forgot Password?',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xff020101),
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(height: 25),
              const _OrWidget(),
              const SizedBox(height: 25),
              const _SignUpButton()
            ],
          ),
        ),
      ),
    );
  }
}

class _TextFieldIcon extends StatelessWidget {
  const _TextFieldIcon({required this.icon});

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: const EdgeInsets.all(11),
      decoration: BoxDecoration(
        color: const Color(0xffDCDADA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: icon,
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          content: const Text(
            'Log In',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          backgroundColor: Colors.amber,
        ));
      },
      child: Container(
        height: 45,
        width: MediaQuery.sizeOf(context).width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xff04D2FF),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.43),
                  offset: const Offset(0, 4),
                  blurRadius: 5)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Log in',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            // SizedBox(width: 5),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 11.0, horizontal: 4),
              child: SvgPicture.asset('asset/image/enter.svg'),
            )
          ],
        ),
      ),
    );
  }
}

class _OrWidget extends StatelessWidget {
  const _OrWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(height: 2, color: Colors.black),
        ),
        const SizedBox(width: 16),
        const Text('or', style: TextStyle(fontSize: 22)),
        const SizedBox(width: 16),
        Expanded(
          child: Container(height: 2, color: Colors.black),
        ),
      ],
    );
  }
}

class _SignUpButton extends StatelessWidget {
  const _SignUpButton();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: MediaQuery.sizeOf(context).width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.43),
                  offset: const Offset(0, 4),
                  blurRadius: 5)
            ],
            border: Border.all(color: const Color(0xff039DC1), width: 5),
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xff026D8E)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            // SizedBox(width: 5),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 11.0, horizontal: 4),
              child: SvgPicture.asset('asset/image/enter.svg'),
            )
          ],
        ),
      ),
    );
  }
}
