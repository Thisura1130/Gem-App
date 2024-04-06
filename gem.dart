import 'package:flutter/material.dart';

import '../models/gem_data.dart';
import '../widgets/gem_card.dart';

class GemsScreen extends StatelessWidget {
  const GemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "GEMS",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Image.asset(
            "assets/images/back_icon.png",
            scale: 2.2,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            mainAxisExtent: 225,
          ),
          itemBuilder: (context, index) {
            return GemCardWidget(
              imagePath: GemItemModel.gemItemList[index].imagePath,
              name: GemItemModel.gemItemList[index].name,
              price: GemItemModel.gemItemList[index].price,
              onTapCallback: () {},
            );
          },
          itemCount: GemItemModel.gemItemList.length,
        ),
      ),
    );
  }
}
