import 'package:flutter/material.dart';
import 'package:flutter_application_6/services/database.dart';
import 'package:flutter_application_6/widgets/card_widget.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade200,
      ),
      body: FutureBuilder(
          future: Database().getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var item = snapshot.data![index];
                  return CardWidget(
                      id: item.id,
                      name: item.name,
                      age: item.age,
                      salary: item.salary);
                },
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return const Center(
                child: Text("Error"),
              );
            }
          },
          ),
    );
  }
}
