import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  IconTypes iconType;
  IconCard(this.iconType, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Center(
            child: BuildIconCard(iconType),
    ));
  }
}

class BuildIconCard extends StatelessWidget{
  final IconTypes _type;
  BuildIconCard(this._type);

  Widget _getIconType(IconTypes iconTypes) {
    Widget? selectedIcon = Column( children: [IconButton(icon: Icon(Icons.local_parking), onPressed: () {  },), Text("주차")],);
    Map<IconTypes, Widget> allIconTypes =
      {
        IconTypes.Parking: Column( children: [IconButton(icon: Icon(Icons.local_parking), onPressed: () {  },), Text("주차")],),
        IconTypes.Taxi: Column(children: [IconButton(icon: Icon(Icons.local_taxi), onPressed: () {  },), Text("택시")],),
        IconTypes.EvCharge: Column(children: [IconButton(icon: Icon(Icons.ev_station), onPressed: () {  },), Text("충전")],),
        IconTypes.etc: Column(children: [IconButton(icon: Icon(Icons.phonelink), onPressed: () {  },), Text("기타")],),
      };

    if(allIconTypes[iconTypes] != null){
      selectedIcon =  allIconTypes[iconTypes];
    }
    return selectedIcon!;
  }

  @override
  Widget build(BuildContext context) {
    return _getIconType(_type);
  }

}

enum IconTypes { Parking, Taxi, EvCharge, etc }
