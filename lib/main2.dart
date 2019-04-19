import 'package:flutter/material.dart';

void main() => runApp(SampleApp());

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Background Name',
      home: SampleAppPage(title: "Fade Demo",),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  final String title;

  const SampleAppPage({Key key, @required this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _SampleAppPageState();
  }
}

class _SampleAppPageState extends State<SampleAppPage> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _toggle();
        },
        tooltip: 'Update Text',
        child: new Icon(Icons.update),
      ),
    );
  }

  Widget _getToggleChild() {
    if (toggle) {
      return Text('Toggle One');
    } else {
      return FlatButton(
        color: Colors.amber,
        onPressed: () {},
        child: Text('Toggle Two'),
      );
    }
  }

  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }
}
