import 'package:citycafe_app/components/adddata.dart';
import 'package:citycafe_app/components/deletedata.dart';
import 'package:citycafe_app/components/reddata.dart';
import 'package:citycafe_app/components/updatedata.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.update),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.read_more),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Add_Data(),
            Delete_Data(),
            Update_Data(),
            Red_Data(),
          ],
        ),
      ),
    );
  }
}
