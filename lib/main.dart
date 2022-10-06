import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Toggle toggle;
  bool _toggled4 = false;
  bool _toggled1 = false;
  bool _toggled2 = false;
  bool _toggled3 = false;
  _setToggle(bool value) {
    switch (toggle) {
      case Toggle.one:
        return setState(() {
          _toggled1 = value;
        });
    case Toggle.two:
        return setState(() {
          _toggled2 = value;
        });
    case Toggle.three:
        return setState(() {
          _toggled3 = value;
        });
    case Toggle.four:
        return setState(() {
          _toggled4 = value;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SwitchListTile(
              value: _toggled1,
              onChanged: _setToggle,
              title: const Text('Toggle'),
              secondary: const Icon(Icons.ac_unit),
            ),
            SwitchListTile(
              value: _toggled2,
              onChanged: (bool value) {
                setState(() {
                  _toggled2 = value;
                });
              },
              title: const Text('Toggle 1'),
              secondary: const Icon(Icons.add_alert_outlined),
            ),
            SwitchListTile(
              value: _toggled3,
              onChanged: (bool value) {
                setState(() {
                  _toggled3 = value;
                });
              },
              title: const Text('Toggle 2'),
              secondary: const Icon(Icons.adb),
            ),
            SwitchListTile(
              value: _toggled4,
              onChanged: (bool value) {
                setState(() {
                  _toggled4 = value;
                });
              },
              title: const Text('Toggle 3'),
              secondary: const Icon(Icons.add_chart),
            ),
          ],
        ),
      ),
    );
  }
}

enum Toggle { one, two, three, four }
