import 'package:flutter/material.dart';
import 'package:projetofinal/shared/constants/custom_colors.dart';

Drawer getHomeDrawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Color(0xff0A6D92)),
          accountName: Text("Paulo Victor"),
          accountEmail: Text("paulovictor@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              "PV",
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.manage_search,
            color: CustomColors().getAppBarMainColor(),
          ),
          title: Text(
            "Buscar Comissão",
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: CustomColors().getAppBarMainColor(),
          ),
          title: Text(
            "Configurações",
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.arrow_back_sharp,
            color: CustomColors().getAppBarMainColor(),
          ),
          title: Text(
            "Sair",
          ),
          onTap: () {
            /*Navigator.pushNamed(context., '/login');*/
            },
        )
      ],
    ),
  );
}
