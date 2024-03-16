import 'package:flutter/material.dart';
import 'package:tugasflutterkop/page/home/post.dart';
import 'home_story.dart';
import "package:flutter/widgets.dart";

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
            title: const Center(child: Text("Pentagram", style: TextStyle())),
            actions: [
              Padding(padding: EdgeInsets.only(left: 20)),
              (Icon(Icons.send))
            ]),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const storyIg(),
              for (var i = 0; i < 10; i++) const Post()
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add), onPressed: () {}));
  }
}
