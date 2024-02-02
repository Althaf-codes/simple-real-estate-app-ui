import 'package:flutter/material.dart';

class VillaTabView extends StatelessWidget {
  const VillaTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 200,
        ),
        Center(
          child: Text(
            'Villas Tab ',
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}
