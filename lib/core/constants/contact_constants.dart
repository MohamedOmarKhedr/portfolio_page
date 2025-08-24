import 'package:flutter/material.dart';
import 'package:portfolio_page/features/portfolio_page/data/models/contact_info_model.dart';

class ContactConstants {
  static const String title = 'Contact Me';

  static const List<ContactInfoModel> contactMethods = [
    ContactInfoModel(
      icon: Icons.email,
      text: 'Email',
      url: 'mmookk20122000@gmail.com',
      isEmail: true,
    ),
    ContactInfoModel(
      icon: Icons.phone,
      text: 'WhatsApp',
      url: 'https://wa.me/201126751126',
      isEmail: false,
    ),
    ContactInfoModel(
      icon: Icons.public,
      text: 'Linkedin',
      url: 'https://www.linkedin.com/in/mohamed-omar-khedr-29a043241/',
      isEmail: false,
    ),
    ContactInfoModel(
      icon: Icons.code,
      text: 'GitHub',
      url: 'https://github.com/MohamedOmarKhedr',
      isEmail: false,
    ),
  ];
}
