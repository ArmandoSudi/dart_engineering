import 'package:dat_engineering/screens/troubleshoot_detail_page.dart';
import "package:flutter/material.dart";

class TroubleShootsPage extends StatelessWidget {
  List<String> models = [
    "Engine can't start",
    "Key fob battery died",
    "Cant engage first gear",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Troubleshoots")),
        body: SafeArea(
          child: ListView(
            children: models
                .map((model) => _builToubleShootItem(model, context))
                .toList(),
          ),
        ));
  }

  Widget _builToubleShootItem(String name, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => TroubleShootDetailPage()));
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
