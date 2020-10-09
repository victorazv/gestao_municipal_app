import 'package:gestao_municipal/src/services/menu_service.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<MenuService> items;
  List menuList = [
    {
      "icon": Icon(Icons.ac_unit_sharp),
      "title": Text('Item 1'),
      "router": Text('Rota 1')
    },
    {
      "icon": Icon(Icons.account_balance_wallet_rounded),
      "title": Text('Item 2'),
      "router": Text('Rota 2')
    },
    {
      "icon": Icon(Icons.location_history),
      "title": Text('Item 3'),
      "router": Text('Rota 3')
    },
  ];
  @override
  void initState() {
    super.initState();
    items = lista();
  }

  List<MenuService> lista() {
    List<MenuService> dados = List();
    menuList.forEach((item) => dados.add(MenuService.fromJson(item)));
    return dados;
  }

  @override
  Widget build(BuildContext context) {
    lista();
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: ListTile(
              leading: items[index].icon,
              title: items[index].title,
              subtitle: items[index].route,
            ),
          ),
        );
      },
    );
  }
}
