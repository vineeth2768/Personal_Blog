import 'package:flutter/material.dart';
import 'package:personal_blog/model/blog_model.dart';

class BlogService extends ChangeNotifier {
  List<BlogModel> state = [];
  final id = 0;
  void addBlog(BlogModel blog) {
    final int id = state.length + 1;
    final BlogModel newBlog = BlogModel(
      id: id,
      title: blog.title,
      body: blog.body,
      image: blog.image,
    );
    state.add(newBlog);
    notifyListeners();
  }
}
