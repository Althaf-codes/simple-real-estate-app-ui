import 'package:flutter/material.dart';

class ApartmentTabView extends StatelessWidget {
  const ApartmentTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 200,
        ),
        Center(
          child: Text(
            'Apartments Tab',
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}
