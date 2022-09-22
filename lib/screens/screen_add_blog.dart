import 'package:flutter/material.dart';

class ScreenAddBlog extends StatelessWidget {
  ScreenAddBlog({Key? key}) : super(key: key);

  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Blog"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                /////// Add Title ////////////
                TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    labelText: "Create Title",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        value.startsWith("")) {
                      return "Please enter the title";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                //////// Add Blog ////////////
                TextFormField(
                  controller: bodyController,
                  maxLength: 1000,
                  maxLines: 15,
                  decoration: const InputDecoration(
                    labelText: "Write your blog",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        value.startsWith("")) {
                      return "Please enter the content";
                    }
                    return null;
                  },
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
                  onPressed: () {
                    final formState = _formKey.currentState!;
                    if (formState.validate()) {}
                  },
                  minWidth: double.infinity,
                  color: Colors.blue,
                  child: const Text(
                    "Post",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
