import 'package:flutter/material.dart';

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null),
        title: Text("Example title"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search), tooltip: 'Search menu', onPressed: null)
        ],
      ),
      body: Center(child: Text("Hello,  world!")),
      floatingActionButton: FloatingActionButton(
          tooltip: 'Add', child: Icon(Icons.add), onPressed: null),
    );
  }
}
