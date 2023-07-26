import 'package:flutter/material.dart';

import '../widgets/appbar_widgets.dart';

class SubCategProducts extends StatelessWidget {
  final String subcategName;
  final String maincategName;
  const SubCategProducts(
      {super.key, required this.subcategName, required this.maincategName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const AppBarBackButton(),
        title: AppBarTitle(title: subcategName),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text(maincategName),
      ),
    );
  }
}

