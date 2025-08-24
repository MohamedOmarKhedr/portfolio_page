import 'package:flutter/material.dart';

class ContactInfoModel {
  final IconData icon;
  final String text;
  final String url;
  final bool isEmail;

  const ContactInfoModel( {
    required this.icon,
    required this.text,
    required this.url,
    required this.isEmail
  });
}