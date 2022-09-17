import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:personal_blog/const/size/size.dart';

class ScreenViewBlog extends StatelessWidget {
  const ScreenViewBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Blog"),
      ),
      body: ListView(
        children: [
          const Text(
            "Title",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          kHeight10,
          const Text("Blog Content "),
          kHeight10,
          Card(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              width: double.infinity,
              child: const Icon(
                Icons.add_photo_alternate_rounded,
                size: 50,
              ),
            ),
          )
        ],
      ),
    );
  }
}
