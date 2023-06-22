import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> likes = [];

  @override
  void initState() {
    likes = List.generate(100, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView.builder(
        itemCount: likes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Hello $index"),
            trailing: likes[index]
                ? IconButton(
                    onPressed: () {
                      favorite(index);
                    },
                    icon: const Icon(Icons.favorite))
                : IconButton(
                    onPressed: () {
                     favorite(index);
                    },
                    icon: const Icon(Icons.favorite_border)),
          );
        },
      ),
    );
  }

  void favorite(int index) {
    if (likes[index]) {
      setState(() {
        likes[index] = !likes[index];
      });
    } else {
      setState(() {
        likes[index] = !likes[index];
      });
    }
  }
}