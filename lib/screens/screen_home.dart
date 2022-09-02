import 'package:flutter/material.dart';
import 'package:personal_blog/routes/routes.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blog"),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text("${index + 1}.HeadLine"),
                subtitle: const Text("Content about Blog"),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, routeAddblog);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
