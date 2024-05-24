import 'package:flutter/material.dart';

class StatusRow extends StatelessWidget {
  const StatusRow({super.key,required this.textStatus, required this.colorStatus});
  final String textStatus;
  final Color? colorStatus;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colorStatus ?? Colors.green,
          ),
        ),
        Text(' $textStatus'),
      ],
    );
  }
}
