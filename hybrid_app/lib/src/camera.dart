import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hybrid_app/main.dart';

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      CameraSgtn().cameras[0],
      ResolutionPreset.medium,
    );
    controller.initialize().then((_) {
      if (!mounted) return;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized)
      return Center(child: CircularProgressIndicator());
    return Scaffold(
      appBar: AppBar(
        title: Text("hybrid app"),
      ),
      body: AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: CameraPreview(controller),
      ),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
