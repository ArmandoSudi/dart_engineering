import 'package:dat_engineering/screens/toubleshoots_page.dart';
import "package:flutter/material.dart";
import "package:dat_engineering/models/step.dart";
import "package:dat_engineering/models/trouble_shoot.dart";

class TroubleShootDetailPage extends StatelessWidget {
  List<TroubleshootStep> troubleshootSteps;
  var troubleshoot;

  TroubleShootDetailPage() {
    this.troubleshootSteps = [
      TroubleshootStep(
          title:
              "Step 1 : Remove the metal ignition key by pressing the button on the side or bottom of your key fob",
          description: "Description",
          imageUrl: "imageurl"),
      TroubleshootStep(
          title:
              "Step 2 : Insert a small flat object into the opening left behind and gently pry your key fob open",
          description: "Description",
          imageUrl: "imageurl"),
      TroubleshootStep(
          title:
              "Step 3 : Once open, gently remove the green circuit board out of your key fob",
          description: "Description",
          imageUrl: "imageurl"),
      TroubleshootStep(
          title:
              "Step 4 : On the back of the green circuit board is a small round battery that you can now replace",
          description: "Description",
          imageUrl: "imageurl"),
      TroubleshootStep(
          title:
              "Step 5 : Reassemble your key fob and re-insert the metal ignition key",
          description: "Description",
          imageUrl: "imageurl"),
    ];

    this.troubleshoot = TroubleShoot(
        title: "Key Fob cant start the car",
        description: "Toyota key fobs and Smart Key systems make jumping into "
            "your car as easy as pressing a button or opening a door handle. "
            "However, like with all technology, they can occasionally have some"
            " issues",
        troubleShootSteps: troubleshootSteps);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Troubleshoot Details"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(troubleshoot.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(troubleshoot.description, style: TextStyle(fontSize: 18)),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(troubleshootSteps[0].title,
                      style: TextStyle(fontSize: 16)),
                  leading: Image(
                      image: new AssetImage("assets/key_fob_1.jpeg"),
                      height: 100,
                      width: 100),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(troubleshootSteps[1].title,
                      style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(troubleshootSteps[2].title,
                      style: TextStyle(fontSize: 16)),
                  leading: Image(
                      image: new AssetImage("assets/key_fob_2.jpeg"),
                      height: 100,
                      width: 100),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(troubleshootSteps[3].title,
                      style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(troubleshootSteps[4].title,
                      style: TextStyle(fontSize: 16)),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget _builStepItem(TroubleshootStep step) {
    return ListTile(
      title: Text(step.title),
    );
  }
}
