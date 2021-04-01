import 'package:dat_engineering/screens/models_page.dart';
import "package:flutter/material.dart";

class BrandsPage extends StatelessWidget {
  List<Brand> brands = [
    Brand(title: "BMW", logoUrl: "assets/bmw_logo.jpeg"),
    Brand(title: "Mercedes Benz", logoUrl: "assets/mercedes_benz_logo.png"),
    Brand(title: "Toyota", logoUrl: "assets/toyota_logo.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Brands")),
        body: SafeArea(
          child: ListView(
            children:
                brands.map((brand) => _builBrandItem(brand, context)).toList(),
          ),
        ));
  }

  Widget _builBrandItem(Brand brand, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: ListTile(
        title: Text(
          brand.title,
          style: TextStyle(fontSize: 20),
        ),
        leading: Image(
            image: new AssetImage(brand.logoUrl), height: 150, width: 150),
        onTap: () {
          Navigator.pushNamed(context, '/modelsPage');
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
