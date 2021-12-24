import 'package:flutter/material.dart';
import 'package:hit_flutter/components/add_my_car_button.dart';
import 'package:hit_flutter/components/icon_card_container.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("홈"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.list))],
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 0
        ),
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            AddMyCarButton(),
            IconCardContainer(),
          ],
        ),
      )
    );
  }
}
