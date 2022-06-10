import 'package:flutter/material.dart';
import 'package:scroll_disign/widgets/backgroung.dart';
import 'package:scroll_disign/widgets/card_table.dart';
import 'package:scroll_disign/widgets/custom_bottom_navigation.dart';
import 'package:scroll_disign/widgets/pageTitle.dart';

class CoustomScreen extends StatelessWidget {
  const CoustomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          Background(),
          _Homebody(),
        ]),
        bottomNavigationBar: CustomNavigation());
  }
}

class _Homebody extends StatelessWidget {
  const _Homebody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // controller: controller,
      child: Column(children: [PageTitle(), CardTable()]),
    );
  }
}
