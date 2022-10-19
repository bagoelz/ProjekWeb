import 'package:flutter/material.dart';

import '../app/data/models/bimbel_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.todo}) : super(key: key);
  final Bimbel todo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailsView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            alignment: Alignment.centerLeft,
            child: Card(
              // child: Image.network(kelas.foto!),
              child: Image.network(todo.foto!),
            ),
          ),
          Center(
            child: Text("${todo.paketbimbelNama}"),
          ),
        ],
      ),
    );
  }
}
