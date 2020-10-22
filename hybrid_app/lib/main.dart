import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hybrid_app/src/camera.dart';
import 'package:hybrid_app/src/explorer.dart';
import 'package:hybrid_app/src/maps.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CameraSgtn().cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/camera': (context) => CameraPage(),
        '/maps': (context) => MapsPage(),
        '/explorer': (context) => ExplorerPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hybrid app"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Taxonomy App",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            RaisedButton(
                child: Text("Cámara"),
                onPressed: () => Navigator.pushNamed(context, '/camera')),
            RaisedButton(
                child: Text("GPS"),
                onPressed: () => Navigator.pushNamed(context, '/maps')),
            RaisedButton(
                child: Text("Archivos"),
                onPressed: () => Navigator.pushNamed(context, '/explorer')),
          ],
        ),
      ),
    );
  }
}

class CameraSgtn {
  static final CameraSgtn cameraSingleton = CameraSgtn._internal();
  factory CameraSgtn() => cameraSingleton;
  CameraSgtn._internal();
  List<CameraDescription> cameras;
}
