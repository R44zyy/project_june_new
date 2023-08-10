import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Expandedd()));
}

class Expandedd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expandedd"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.network(
                "https://images.unsplash.com/photo-1589988279835-9c3a838716ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw0OTQyNjZ8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=900&q=60"),
          ),
          Expanded(
            child: Image.network(
                "https://images.unsplash.com/photo-1691443297137-68818fe7bce9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1932&q=80"),
          ),
          Expanded(
            child: Image.network(
                "https://images.unsplash.com/photo-1589988279835-9c3a838716ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw0OTQyNjZ8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=900&q=60"),
          ),
          Expanded(
            child: Image.network(
                "https://images.unsplash.com/photo-1691443297137-68818fe7bce9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1932&q=80"),
          ),
        ],
      ),
    );
  }
}
