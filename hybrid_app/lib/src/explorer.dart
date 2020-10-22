import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class ExplorerPage extends StatefulWidget {
  ExplorerPage({Key key}) : super(key: key);

  @override
  _ExplorerPageState createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hybrid app"),
      ),
      body: FutureBuilder(
        future: FilePicker.getFile(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return Center(
              child: (snapshot.hasData)
                  ? Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Text(snapshot.data.path),
                  )
                  : CircularProgressIndicator());
        },
      ),
    );
  }
}
