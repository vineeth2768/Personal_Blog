import 'package:flutter/material.dart';

class ScreenAddBlog extends StatelessWidget {
  const ScreenAddBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Blog"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              /////// Add Title ////////////
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Create Title",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //////// Add Blog ////////////
              TextFormField(
                maxLength: 1000,
                maxLines: 15,
                decoration: const InputDecoration(
                  labelText: "Write your blog",
                  border: OutlineInputBorder(),
                ),
              ),

              //////// Add Image Section //////////
              InkWell(
                child: Card(
                  elevation: 10,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 4,
                    width: double.infinity,
                    child: const Icon(
                      Icons.add_a_photo,
                      size: 60,
                    ),
                  ),
                ),
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (ctx) {
                        return ListView(
                          shrinkWrap: true,
                          children: [
                            ListTile(
                              leading: const Icon(Icons.camera_alt),
                              title: const Text('Camara'),
                              onTap: () {},
                            ),
                            const Divider(),
                            ListTile(
                              leading: const Icon(Icons.photo),
                              title: const Text('Gallery'),
                              onTap: () {},
                            )
                          ],
                        );
                      });
                },
              ),
              /////// Post Button /////////
              MaterialButton(
                onPressed: () {},
                minWidth: double.infinity,
                color: Colors.blue,
                child: const Text("Post"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
