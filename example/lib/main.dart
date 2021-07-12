import 'package:custom_loading_button/custom_loading_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'New File'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isLoading = false;

  _upload() async {
    setState(() => _isLoading = !_isLoading);
    await Future.delayed(Duration(seconds: 2));
    setState(() => _isLoading = !_isLoading);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Alterar foto de perfil',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              width: 350.0,
              height: 350.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/image.png',
                      fit: BoxFit.cover,
                    ).image),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              margin: EdgeInsets.all(32.0),
              child: CustomLoadingButton(
                text: 'UPLOAD',
                isLoading: _isLoading,
                borderRadius: BorderRadius.circular(16.0),
                textStyle:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                onPressed: _upload,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
