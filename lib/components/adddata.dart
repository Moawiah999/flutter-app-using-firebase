import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Add_Data extends StatelessWidget {
  const Add_Data({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController idController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController corsesController = TextEditingController();
    return Container(
      color: Colors.amber,
      child: ListView(
        children: [
          Center(
            child: Text("Add data information"),
          ),
          Text("id Student"),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: idController,
          ),
          SizedBox(
            height: 10,
          ),
          Text("name Student"),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: nameController,
          ),
          SizedBox(
            height: 10,
          ),
          Text("corses Student"),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: corsesController,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                CollectionReference studentref =
                    FirebaseFirestore.instance.collection("students");
                studentref.add({
                  "id": idController.text,
                  "name": nameController.text,
                  "corsee": corsesController.text
                });
              },
              child: Text("Add Student information"))
        ],
      ),
    );
  }
}
