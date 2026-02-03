import 'package:flutter/material.dart';

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // AppBar
      appBar: AppBar(
        /// PreferredSize => to change and customize AppBar height size
        backgroundColor: Colors.black,
        // leading always on left side
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.deepOrange,
        ),
        title: Text('My First App', style: TextStyle(color: Colors.deepOrange)),
        centerTitle: true,
        // actions alwyas on right side
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.deepOrange,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.deepOrange,
          ),
        ],
      ),
      body: Center(child: Column(children: [Text('hii')])),
    );
  }
}
