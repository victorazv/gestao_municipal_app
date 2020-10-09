import 'dart:convert';

import 'package:gestao_municipal/src/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class MenuService {
  Icon icon;
  Text title;
  Text route;

  MenuService.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    title = json['title'];
    route = json['route'];
  }
}
