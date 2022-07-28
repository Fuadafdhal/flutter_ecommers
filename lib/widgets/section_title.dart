import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String name;
  const SectionTitle({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          name,
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
