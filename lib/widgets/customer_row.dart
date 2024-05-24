import 'package:flutter/material.dart';

class CustomerRow extends StatelessWidget {
  final String iconString;
  final String textIcon;
  final String containerContent;
  final String? textContainer;
  final String containerContent2;
  final Color? colorText;


  const CustomerRow({super.key,
    required this.iconString,
    required this.textIcon,
    required this.containerContent,
    required this.containerContent2,
    this.textContainer,
    this.colorText
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ImageIcon(
              AssetImage(iconString),
              size: 20,
            ),
            SizedBox(
                width: 110,
                child: Text('$textIcon',textAlign: TextAlign.center,),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              height: 40,
              width: 80,
              padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: '$containerContent',
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black,),
              ),
            ),
            SizedBox(
              width: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('$textContainer',textAlign: TextAlign.center,),
              ),
            ),

          ],
        ),
        Row(
          children: [
            Container(
              width: 80,
              padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '$containerContent2',
                textAlign: TextAlign.center,
                style: TextStyle(color: colorText ?? Colors.greenAccent,),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
