import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('catalogApp')
      ),
      body: Center(
        child: Text('Home Page'),
      ),
      drawer: MyDrawer(),
    );
  }
}
