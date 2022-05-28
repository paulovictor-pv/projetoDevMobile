import 'package:flutter/material.dart';
import 'package:projetofinal/pages/home/home_widgets/home_list_item.dart';
import 'package:projetofinal/pages/home/home_widgets/home_list_model.dart';
import 'package:projetofinal/shared/constants/custom_colors.dart';

class HomePageContent extends StatefulWidget {
  final List<HomeListModel> listModels;
  HomePageContent({this.listModels});

  @override
  _HomePageContentState createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.blue,
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 20,
      ),
      child: ListView.builder(
        itemCount: widget.listModels.length,
        itemBuilder: (context, index) {
          return HomeListItem(
            homeListModel: widget.listModels[index],
          );
        },
      ),
    );
  }
}
