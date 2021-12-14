import 'package:flutter/material.dart';
import 'package:influence_me/utils/images.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: GridView.count(
            primary: false,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            crossAxisCount: 3,
            children: <Widget>[
              Image(image: AssetImage(Images.Matthew)),
              Image(image: AssetImage(Images.Serhiy)),
              Image(image: AssetImage(Images.Thomas)),
              Image(image: AssetImage(Images.Kermen)),
              Image(image: AssetImage(Images.Farhan)),
              Image(image: AssetImage(Images.Amir)),
              Image(image: AssetImage(Images.Daniel)),
              Image(image: AssetImage(Images.Serhiy)),
              Image(image: AssetImage(Images.Pedram)),
            ],
          ),
        ),
      ],
    );
  }
}
