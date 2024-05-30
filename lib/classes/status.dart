import 'package:flutter/material.dart';

class Status {
  String id;
  String urlIcon;
  String labelIcon;
  String inputContainer;
  String unitContainer;
  String resultContainer;
  final Color? colorText;


  Status({required this.id,required this.urlIcon,required this.labelIcon,required this.inputContainer,required this.unitContainer,required this.resultContainer,this.colorText});
}