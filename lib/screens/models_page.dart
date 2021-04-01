import 'package:dat_engineering/screens/toubleshoots_page.dart';
import "package:flutter/material.dart";

class ModelsPage extends StatelessWidget {
  List<String> models = [
    "Rav 4",
    "Toyota",
    "Fortuner",
    "Prado",
    "Hilux",
    "Tacoma",
    "Highlander",
    "FJ Cruiser"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Models")),
        body: SafeArea(
          child: ListView(
            children:
                models.map((model) => _builBrandItem(model, context)).toList(),
          ),
        ));
  }

  Widget _builBrandItem(String name, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => TroubleShootsPage()));
        },
      ),
    );
  }
}

class Brand {
  String title;
  String logoUrl;

  Brand({this.title, this.logoUrl});
}
