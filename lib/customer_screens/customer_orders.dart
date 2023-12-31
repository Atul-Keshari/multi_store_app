import 'package:flutter/material.dart';
import 'package:multistore/widgets/appbar_widgets.dart';

class CustomerOrders extends StatelessWidget {
  const CustomerOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarTitle(
          title: 'CustomerOrders',
        ),
        leading: const AppBarBackButton(),
      ),
    );
  }
}
