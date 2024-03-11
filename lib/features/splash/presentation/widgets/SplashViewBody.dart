import 'dart:async';

import 'package:flutter/material.dart';
import 'package:slashinternship/features/Product/Presentation/View/ProductView.dart';

class SpalshViewBody extends StatefulWidget {
  const SpalshViewBody({super.key});

  @override
  State<SpalshViewBody> createState() => _SpalshViewBodyState();
}

class _SpalshViewBodyState extends State<SpalshViewBody> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3),
        () => Navigator.pushNamed(context, ProductsView.id));
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '/.',
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 35),
      ),
    );
  }
}
