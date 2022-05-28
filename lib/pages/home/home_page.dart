import 'package:flutter/material.dart';
import 'package:projetofinal/pages/home/home_widgets/home_appbar.dart';
import 'package:projetofinal/pages/home/home_widgets/home_content.dart';
import 'package:projetofinal/pages/home/home_widgets/home_drawer.dart';
import 'package:projetofinal/pages/home/home_widgets/home_fab.dart';

import 'home_widgets/home_list_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;

  List<HomeListModel> listModels = [
    HomeListModel(
      title: "Comissão de Direito trabalhista",
      assetIcon: "assets/icons/comissao.png",
    ),
    HomeListModel(
      title: "Comissão de investigação criminal",
      assetIcon: "assets/icons/comissao.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getHomeAppBar(),
      drawer: getHomeDrawer(),
      floatingActionButton: getHomeFab(context, listModels, refreshPage),
      body: HomePageContent(
        listModels: listModels,
      ),
    );
  }

  refreshPage() {
    setState(() {});
  }
}

