import 'package:flutter/material.dart';
import 'package:plantss/constants.dart';
import 'package:plantss/widgets/appbar.dart';
import 'package:plantss/widgets/home_body_gridview.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [Appbars()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: HomeBodyGridview(),
      ),
    );
  }
}






