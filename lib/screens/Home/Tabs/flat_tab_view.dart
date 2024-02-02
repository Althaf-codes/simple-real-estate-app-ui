import 'package:flutter/material.dart';

class FlatTabView extends StatelessWidget {
  const FlatTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 200,
        ),
        Center(
          child: Text(
            'Flats Tab ',
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}
