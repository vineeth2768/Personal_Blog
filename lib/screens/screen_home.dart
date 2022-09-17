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
            return InkWell(
              child: Card(
                child: ListTile(
                  title: Text("${index + 1}.HeadLine"),
                  subtitle: const Text(
                    "Content about Blog",
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ////// Edit Button ////////////////
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                      ),
                      ////////// Delete Button///////////
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.delete),
                      )
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, routeViewBlog);
              },
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
